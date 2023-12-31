package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.GenreDAO;
@Repository
public class GenreDAOImpl implements GenreDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<String> search(int m_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.dong.genreMapper.genre_search", m_number);
	}
	
	@Override
	public List<Integer> searchMovie(String genre) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.dong.genreMapper.genre_searchMovie", genre);
	}
}
