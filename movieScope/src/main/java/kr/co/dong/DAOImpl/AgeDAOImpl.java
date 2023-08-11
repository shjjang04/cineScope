package kr.co.dong.DAOImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.AgeDAO;
@Repository
public class AgeDAOImpl implements AgeDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int search(int m_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.dong.ageMapper.age_search", m_number);
	}

	@Override
	public List<Integer> searchMovie(int m_age) {
		// TODO Auto-generated method stub
		Map<String, Integer> map = new HashMap<String, Integer>();
		if(m_age == -1) {
			map.put("bottom", -1);
			map.put("top", 100);
		}
		else if(m_age == 0) {
			map.put("bottom", -1);
			map.put("top", 1);
		}
		else if(m_age == 12) {
			map.put("bottom", 11);
			map.put("top", 13);
		}
		else if(m_age == 15) {
			map.put("bottom", 14);
			map.put("top", 16);
		}
		else if(m_age == 18) {
			map.put("bottom", 17);
			map.put("top", 19);
		}
			
		return sqlSession.selectList("kr.co.dong.ageMapper.age_searchMovie", map);
	}
}
