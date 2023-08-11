package kr.co.dong.serviceImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.AgeDAO;
import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.NationDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.VO.MovieVO;
import kr.co.dong.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private GenreDAO genreDAO;
	@Autowired
	private AgeDAO ageDAO;
	@Autowired
	private NationDAO natinoDAO;
	@Autowired
	private MovieDAO movieDAO;
	
	@Override
	public List<Integer> searchCollectAll(MovieVO mVo) {
		// movie 而щ읆蹂� �빐�떦�릺�뒗 媛믨낵 留ㅼ튂�릺�뒗 寃껋쓣 李얠븘以�
		
		List<Integer> list1 = movieDAO.searchAll(mVo);
		List<Integer> list2 = ageDAO.searchMovie(mVo.getM_age());
		List<Integer> list3 = new ArrayList<Integer>(); 
		if(mVo.getM_genre().equals("모든장르")) {
			List<MovieDTO> tmp = movieDAO.listAll();
			for(int i = 0; i<tmp.size(); i++) {
				list3.add(tmp.get(i).getM_number());
			}
		}else {			
			list3 = genreDAO.searchMovie(mVo.getM_genre());
		}
		List<Integer> list4 = new ArrayList<Integer>();
		if(mVo.getM_nation().equals("모든국가")) {
			List<MovieDTO> tmp = movieDAO.listAll();
			for(int i = 0; i<tmp.size(); i++) {
				list4.add(tmp.get(i).getM_number());
			}
		}else {
			list4 = natinoDAO.searchMovie(mVo.getM_nation());
		}
		Set<Integer> set1 = new HashSet<Integer>();
		Set<Integer> set2 = new HashSet<Integer>();
		Set<Integer> set3 = new HashSet<Integer>();
		Set<Integer> set4 = new HashSet<Integer>();
		
		for(int i=0 ; i<list1.size(); i++) {
			set1.add(list1.get(i));
		}
		for(int i=0 ; i<list2.size(); i++) {
			set2.add(list2.get(i));
		}
		for(int i=0 ; i<list3.size(); i++) {
			set3.add(list3.get(i));
		}
		for(int i=0 ; i<list4.size(); i++) {
			set4.add(list4.get(i));
		}
		set1.retainAll(set2);
		set1.retainAll(set3);
		set1.retainAll(set4);
				
		List<Integer> list = new ArrayList<Integer>();
		for(int i : set1)
			list.add(i);
			
		return list;
	}

	@Override
	public List<Integer> searchAllM_age(int m_age) {
		// movie �뿰�졊�젣�븳蹂� �쁺�솕�젙蹂� �쟾泥� 寃��깋
		return ageDAO.searchMovie(m_age);
	}

	@Override
	public List<Integer> searchAllM_genre(String m_genre) {
		// movie �옣瑜대퀎 �쁺�솕�젙蹂� �쟾泥� 寃��깋
		return genreDAO.searchMovie(m_genre);
	}

	@Override
	public List<Integer> searchAllM_nation(String m_nation) {
		// movie 援�媛�蹂� �쁺�솕�젙蹂� �쟾泥� 寃��깋
		return natinoDAO.searchMovie(m_nation);
	}

	@Override
	public MovieDTO searchDetail(int m_number) {
		// TODO Auto-generated method stub
		return movieDAO.detail(m_number);
	}
}
