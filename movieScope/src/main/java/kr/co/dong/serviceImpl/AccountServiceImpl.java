package kr.co.dong.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DTO.UserDTO;
import kr.co.dong.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	UserDAO userdao;

	@Override
	public void insert(UserDTO u_no) {
		// TODO Auto-generated method stub
		userdao.insert(u_no);
	}

	@Override
	public void update(UserDTO u_no) {
		// TODO Auto-generated method stub
		userdao.update(u_no);
	}

	@Override
	public void delete(int u_no) {
		// TODO Auto-generated method stub
		userdao.delete(u_no);
	}

	@Override
	public String idCheck(String u_id) {
		return userdao.idCheck(u_id);
	}

}
