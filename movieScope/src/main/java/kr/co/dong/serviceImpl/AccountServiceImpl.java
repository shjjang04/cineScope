package kr.co.dong.serviceImpl;

import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DTO.UserDTO;
import kr.co.dong.service.AccountService;

public class AccountServiceImpl implements AccountService {

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


}
