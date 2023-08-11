package kr.co.dong.service;

import org.springframework.stereotype.Service;

import com.google.protobuf.TextFormat.Parser.SingularOverwritePolicy;

import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

@Service
public interface SignupService {
	// 회원가입 (정보 입력)
	public void insert(SignupDTO dto) throws Exception;

	// ID 중복확인
	public String idCheck(String u_id);
	//ID 중복확인
	public int Checkid(String u_id);
	//회원 정보 수정
	public void update (SignupDTO dto);
	//회원 탈퇴
	public int delete(int u_no);
	// 
}
