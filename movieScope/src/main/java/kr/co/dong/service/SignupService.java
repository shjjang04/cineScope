package kr.co.dong.service;

import org.springframework.stereotype.Service;

import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

@Service
public interface SignupService {
	// 회원가입 (정보 입력)
	public void insert(SignupDTO dto);

	// ID 중복확인
	public String idCheck(String u_id);
	//ID 중복확인
	public int Checkid(String u_id);
}
