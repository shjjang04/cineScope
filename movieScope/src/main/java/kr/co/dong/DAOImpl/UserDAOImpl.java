package kr.co.dong.DAOImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DTO.UserDTO;
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlsession;

	private final static String namespace = "kr.co.dong.userMapper";

	@Override
	public String login(Map<String, Object> map) {
		return sqlsession.selectOne(namespace + ".user_login", map);
	}

	@Override
	public UserDTO listAll() {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".listAll");
	}

	@Override
	public UserDTO selectOne(int uno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".user_selectDetail", uno);
	}

	@Override
	public void insert(UserDTO ud) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace + ".user_signup", ud);
	}

	@Override
	public void update(UserDTO ud) {
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
