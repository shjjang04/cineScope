package kr.co.dong.service;

import java.util.List;

import kr.co.dong.DTO.UserfavoriteDTO;

public interface MovieDetailService {
	public String[] movieDetail(int m_number);
	public List<String> userFav(int m_number) throws Exception;
}
