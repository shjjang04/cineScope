package kr.co.dong.DAO;

import java.util.Map;

import kr.co.dong.DTO.SignupDTO;

public interface SignupDAO {

	public String login(Map<String, Object>map);
	
	public SignupDTO listAll();
	public SignupDTO selectOne(int sno);
	public void insert(SignupDTO ud);
	public void update (SignupDTO ud);
	public void delete (int u_no);
	public String idCheck(String u_id);
}
