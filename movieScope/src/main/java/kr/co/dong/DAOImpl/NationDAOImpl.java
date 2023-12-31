package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.NationDAO;
@Repository
public class NationDAOImpl implements NationDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String search(int m_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.dong.nationMapper.nation_search", m_number);
	}
	
	@Override
	public List<Integer> searchMovie(String m_nation) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.dong.nationMapper.nation_searchMovie", m_nation);
	}

}
