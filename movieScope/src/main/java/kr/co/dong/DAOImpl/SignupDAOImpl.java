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
	
	// 로그인
	@Override
	public String login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_login", map);
	}
	// 회원 정보 삽입(가입)
	@Override
	public void insert(SignupDTO ud) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace + ".user_signup", ud);
	}
		// 아이디 체크
	@Override
	public String idCheck(String u_id) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_idCheck", u_id);
	}
	// ???
	@Override
	public SignupDTO selectOne(int sno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".selectOne", sno);
	}
	// 아이디 체크
	@Override
	public int Checkid(String u_id) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".Checkid", u_id);
	}
	@Override
	public void update(SignupDTO sd) {
		// TODO Auto-generated method stub
		sqlsession.update(namespace + ".user_update", sd);
	}
	@Override
	public int delete(int u_no) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace + ".delete", u_no);
	}

}
