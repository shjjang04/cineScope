package kr.co.dong.DAOImpl;

import java.util.List;
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
		return sqlsession.selectOne(namespace + ".user_login", map);
	}

	@Override
	public SignupDTO listAll() {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".listAll");
	}

	@Override
	public SignupDTO selectOne(int uno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_selectDetail", uno);
	}

	@Override
	public void insert(SignupDTO ud) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace + ".user_signup", ud);
	}

	@Override
	public void update(SignupDTO ud) {
		// TODO Auto-generated method stub
		sqlsession.update(namespace + ".update", ud);
	}

	@Override
	public void delete(int uno) {
		// TODO Auto-generated method stub
		sqlsession.delete(namespace+".delete", uno);
	}

	@Override
	public String idCheck(String u_id) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace +".idCheck" ,u_id);
	}

}
