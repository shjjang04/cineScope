package kr.co.dong.service;

import org.springframework.stereotype.Service;

import kr.co.dong.DTO.UserDTO;

@Service
public interface AccountService {
	public void insert (UserDTO u_no);
	public void update (UserDTO u_no);
	public void delete (int u_no);
	public String idCheck(String u_id);
}
