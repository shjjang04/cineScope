package kr.co.dong.serviceImpl;


import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.AgeDAO;
import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.NationDAO;import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserDTO;
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
		String[] list = new String [11];
		MovieDTO dto = moviedao.detail(m_number);
		list[0] = (dto.getM_name());
		list[1] = (dto.getM_opening());
		list[2] = (dto.getM_reopening());
		list[3] = (dto.getM_director());
		list[4] = (dto.getM_grade());
		list[5] = (dto.getM_attendance());
		list[6] = (dto.getM_runtime());
		list[7] = (dto.getM_awards());
		list[8] = (genredao.search(m_number));
		list[9] = (nationdao.search(m_number));
		switch(agedao.search(m_number)) {
		case 0:
			list[10] = "전체이용가";
		case 12:
			list[10] = "12세이용가";
		case 15:
			list[10] = "15세이용가";
		case 18:
			list[10] = "청소년관람불가";
		}
		return list;
	}

	@Override
	public List<String> userFav(int m_number) {
		// TODO Auto-generated method stub
		List<Integer> userList = null;
		List<Integer> movieList = null;
		List<Integer> countList = null;
		List<String> selectList = null;
		List<UserfavoriteDTO> list = userfavoritedao.favList();
		for(UserfavoriteDTO data : list) {
			if(m_number == data.getFK_m_number()) {
				userList.add(data.getFK_u_number());
			}
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
		for(int data : set) {
			if(Collections.frequency(movieList, data) >= countList.get(2)) {
				selectList.add(moviedao.detail(data).getM_name());
			}
		}
		return selectList;
	}
	
}
