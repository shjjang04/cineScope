package kr.co.dong.service;

import java.util.List;

import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.VO.MovieVO;

public interface SearchService {
	public List<Integer> searchCollectAll(MovieVO mVo);	//movie 컬럼별 해당되는 값과 매치되는 것을 찾아줌
	public List<Integer> searchAllM_age(int m_age);	//movie 연령제한별 영화정보 전체 검색
	public List<Integer> searchAllM_genre(String m_genre);	//movie 장르별 영화정보 전체 검색
	public List<Integer> searchAllM_nation(String m_nation);	//movie 국가별 영화정보 전체 검색
	public MovieDTO searchDetail(int m_number);

}