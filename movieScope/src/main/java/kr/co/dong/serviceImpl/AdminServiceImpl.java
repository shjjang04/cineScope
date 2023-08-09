package kr.co.dong.serviceImpl;

import org.springframework.stereotype.Service; 

import kr.co.dong.DAO.AdminDAO;
import kr.co.dong.DAO.SignupDAO;
import kr.co.dong.DTO.AdminDTO;
import kr.co.dong.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{
	AdminDAO admindao;
	SignupDAO userdao;
	
	@Override
	public void insert(AdminDTO ad) {
		// TODO Auto-generated method stub
		admindao.insert(ad);
	}

	@Override
	public void delete(int u_no) {
		// TODO Auto-generated method stub
		userdao.delete(u_no);
	}
	
}
