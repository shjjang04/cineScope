package kr.co.dong.serviceImpl;


import org.springframework.stereotype.Service;

import kr.co.dong.DAO.AgeDAO;
import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.NationDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.service.MovieDetailService;
@Service
public class MovieDetailServiceImpl implements MovieDetailService{

	MovieDAO moviedao;
	AgeDAO agedao;
	GenreDAO genredao;
	NationDAO nationdao;
	
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
}
