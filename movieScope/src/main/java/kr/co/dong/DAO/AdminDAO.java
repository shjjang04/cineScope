package kr.co.dong.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.AdminDTO;


public interface AdminDAO {

	public Map login(Map<String, Object> map);
	public List<AdminDTO> listAll();
	public AdminDTO selectOne(int a_no);
	public void insert (AdminDTO ad);
	public void update (AdminDTO ad);
	public void delete (AdminDTO a_no);
	
}
