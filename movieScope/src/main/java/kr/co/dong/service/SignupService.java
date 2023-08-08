package kr.co.dong.service;

import org.springframework.stereotype.Service;

import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

@Service
public interface SignupService {

	public void insert (SignupDTO dto);
	public void update (SignupDTO dto);
	public void delete (int s_no);
	public String idCheck(String u_id);
	
}
