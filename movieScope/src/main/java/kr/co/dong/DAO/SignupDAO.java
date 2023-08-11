package kr.co.dong.DAO;

import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.SignupDTO;
public interface SignupDAO {
	// 로그인
	public String login(Map<String, Object>map);
	
	// 회원 정보 선택? userfavorite에서 사용
	public SignupDTO selectOne(int sno);
	// 회원가입 정보 입력
	public void insert(SignupDTO ud);
	//ID 중복 확인
	public String idCheck(String u_id);
	//ID 중복 확인
	public int Checkid(String u_id);
	//userUpdate
	public void update(SignupDTO sd);
	// userDelete
	public int delete(int u_no);
}
