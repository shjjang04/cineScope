package kr.co.dong.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.SignupDAO;
import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.service.SignupService;

@Service
public class SignupServiceImpl implements SignupService{

	@Autowired
	SignupDAO dao;

	@Override
	public void insert(SignupDTO dto) {
		// TODO Auto-generated method stub
		dao.insert(dto);
	}

	@Override
	public String idCheck(String u_id) {
		// TODO Auto-generated method stub
		return dao.idCheck(u_id);
	}

	@Override
	public int Checkid(String u_id) {
		// TODO Auto-generated method stub
		int result = dao.Checkid(u_id);
		return result;
	}

}
