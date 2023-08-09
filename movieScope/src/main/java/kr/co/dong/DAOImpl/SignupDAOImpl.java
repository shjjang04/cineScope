package kr.co.dong.DAOImpl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.SignupDAO;
import kr.co.dong.DTO.SignupDTO;
@Repository
public class SignupDAOImpl implements SignupDAO {

	@Autowired
	private SqlSession sqlsession;
	private final static String namespace = "kr.co.dong.SignupMapper";
	
	@Override
	public String login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_login", map);
	}

	@Override
	public void insert(SignupDTO ud) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace + ".user_signup", ud);
	}

	@Override
	public void delete(int u_no) {
		// TODO Auto-generated method stub
		sqlsession.delete(namespace + ".user_delete", u_no);
	}

	@Override
	public String idCheck(String u_id) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_idCheck", u_id);
	}

	@Override
	public SignupDTO selectOne(int sno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_selectDetail", sno);
	}

	@Override
	public int Checkid(String u_id) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".Checkid", u_id);
	}

}
