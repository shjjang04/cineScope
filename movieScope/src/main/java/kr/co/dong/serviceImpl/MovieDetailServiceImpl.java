package kr.co.dong.serviceImpl;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.AgeDAO;
import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.NationDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.MovieDetailService;
@Service
public class MovieDetailServiceImpl implements MovieDetailService{
	@Autowired
	MovieDAO moviedao;
	@Autowired
	AgeDAO agedao;
	@Autowired
	GenreDAO genredao;
	@Autowired
	NationDAO nationdao;
	@Autowired
	UserfavoriteDAO userfavoritedao;
	
	
	@Override
	public String[] movieDetail(int m_number) {
		// TODO Auto-generated method stub
		String[] list = new String [12];
		MovieDTO dto = moviedao.detail(m_number);
		list[0] = (dto.getM_name());
		list[1] = (dto.getM_opening());
		list[2] = (dto.getM_reopening());
		list[3] = (dto.getM_director());
		list[4] = (dto.getM_actor());
		list[5] = (dto.getM_grade());
		list[6] = (dto.getM_attendance());
		list[7] = (dto.getM_runtime());
		list[8] = (dto.getM_awards());
		list[9] = merge(genredao.search(m_number));
		list[10] = (nationdao.search(m_number));
		try {
		switch(agedao.search(m_number)) {
		case 0:
			list[11] = "전체이용가";
		case 12:
			list[11] = "12세이용가";
		case 15:
			list[11] = "15세이용가";
		case 18:
			list[11] = "청소년관람불가";
		}
		}catch (Exception e) {
			// TODO: handle exception
			list[11] = "";
		}
		return list;
	}

	@Override
	public List<String> userFav(int m_number){
		// TODO Auto-generated method stub
		List<Integer> userList = new ArrayList<Integer>();
		List<Integer> movieList = new ArrayList<Integer>();
		List<Integer> countList = new ArrayList<Integer>();
		List<String> selectList = new ArrayList<String>();
		List<UserfavoriteDTO> list = userfavoritedao.favList();
		for(UserfavoriteDTO data : list) {
			if(m_number == data.getFK_m_number()) {
				userList.add(data.getFK_u_number());
			}
		}
		if(userList == null) {
			return null;
		}
		
		for(int data : userList) {
			for(UserfavoriteDTO dto : userfavoritedao.favCheck(data)) {
				if(dto.getFK_m_number() != m_number) {
					movieList.add(dto.getFK_m_number());
				}
			}
		}
		Set<Integer> set = new HashSet<Integer>(movieList);
		for(int data : set) {
			countList.add(Collections.frequency(movieList, data));
		}
		Collections.sort(countList);
		if(countList.size() >= 3) {
			for(int data : set) {
				if(Collections.frequency(movieList, data) >= countList.get(2)) {
					selectList.add(moviedao.detail(data).getM_name());
				}
			}
		}else {
			for(int data : set) {
				if(Collections.frequency(movieList, data) >= countList.get(countList.size()-1)) {
					selectList.add(moviedao.detail(data).getM_name());
				}
			}
		}
		return selectList;
		
	}

	
	
	
	
	public String merge(List<String> list) {
		int cnt = 0;
		String merge = "";
		if(cnt == 0) {
			merge += list.get(0);
			cnt++;
		}else {
			for(String str : list) {
				merge += ", " + str;
			}
		}
		
		return merge;
	}

	@Override
	public int favCheck(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userfavoritedao.favCheck(map);
	}

	@Override
	public void favAdd(UserfavoriteDTO dto) {
		// TODO Auto-generated method stub
		userfavoritedao.favAdd(dto);
	}
	
	@Override
	public void favCancel(UserfavoriteDTO dto) {
		userfavoritedao.favDelete(dto);
	}
	
}
