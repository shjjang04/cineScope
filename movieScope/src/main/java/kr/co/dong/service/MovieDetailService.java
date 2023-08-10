package kr.co.dong.service;

import java.util.List;
import java.util.Map;

import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

public interface MovieDetailService {
	public String[] movieDetail(int m_number);
	public List<String> userFav(int m_number) throws Exception;
	public int favCheck(Map<String, String> map);
	public void favAdd(UserfavoriteDTO dto);
}
