package kr.co.dong.service;

import kr.co.dong.DTO.UserfavoriteDTO;

public interface MovieDetailService {
	public String[] movieDetail(int m_number);
	
	public void userFavAdd(UserfavoriteDTO userfavdto);
}
