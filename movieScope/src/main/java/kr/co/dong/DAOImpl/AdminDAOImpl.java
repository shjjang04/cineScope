package kr.co.dong.DAOImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.AdminDAO;
import kr.co.dong.DTO.AdminDTO;
@Repository
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSession sqlSession;
	private final static String namespace = "kr.co.dong.adminMapper";
	
	@Override
	public Map login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".login", map);
	}

	@Override
	public List<AdminDTO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll()");
	}

	@Override
	public AdminDTO selectOne(int a_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectOne", a_no);
	}

	@Override
	public void insert(AdminDTO ad) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insert", ad);
	}

	@Override
	public void update(AdminDTO ad) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", ad);
	}

	@Override
	public void delete(AdminDTO a_no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", a_no);
	}

}
