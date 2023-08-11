package kr.co.dong.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;

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
	public void insert(SignupDTO dto) throws Exception {
		// TODO Auto-generated method stub
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		int age = Integer.parseInt(format.format(date)) - Integer.parseInt(format.format(format.parse(dto.getU_birthday())));
		format = new SimpleDateFormat("MM");
		if (Integer.parseInt(format.format(date)) < Integer.parseInt(format.format(format.parse(dto.getU_birthday())))) {
			dto.setU_age(age);
		}else if (Integer.parseInt(format.format(date)) > Integer.parseInt(format.format(format.parse(dto.getU_birthday())))) {
			dto.setU_age(age-1);
		}else {
			format = new SimpleDateFormat("dd");
			if(Integer.parseInt(format.format(date)) > Integer.parseInt(format.format(format.parse(dto.getU_birthday())))) {
				dto.setU_age(age-1);
			}else {
				dto.setU_age(age);
			}
		}
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

	@Override
	public void update(SignupDTO dto) {
		// TODO Auto-generated method stub
		dao.update(dto);
	}

	@Override
	public int delete(int u_no) {
		// TODO Auto-generated method stub
		return dao.delete(u_no);
	}

}
