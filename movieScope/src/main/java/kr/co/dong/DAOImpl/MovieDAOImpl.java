package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.VO.MovieVO;
@Repository
public class MovieDAOImpl implements MovieDAO{
	@Autowired
	private SqlSession sqlSession;
	private String namespace = "kr.co.dong.movieMapper";
	
	@Override
	public int search(String m_name) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".movie_search", m_name);
	}

	@Override
	public MovieDTO detail(int m_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".movie_detail", m_number);
	}

	@Override
	public List<MovieDTO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".movie_all");
	}

	@Override
	public List<Integer> searchAll(MovieVO mVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+ ".movie_searchAll", mVo);
	}

}

