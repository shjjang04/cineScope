package kr.co.dong.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.UserDTO;
public interface UserDAO {

	public String login(Map<String, Object> map);
	public UserDTO listAll();
	public UserDTO selectOne(int uno);
	public void insert(UserDTO ud);
	public void update (UserDTO ud);
	public void delete(int uno);
}