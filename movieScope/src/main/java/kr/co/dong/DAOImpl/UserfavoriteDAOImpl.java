package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.UserfavoriteDTO;
@Repository
public class UserfavoriteDAOImpl implements UserfavoriteDAO{

	@Autowired
	SqlSession sqlSession;
	private final static String namespace = "kr.co.dong.userfavoriteMapper";
	
	@Override
	public List<UserfavoriteDTO> favCheck(int u_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".favCheck", u_number);
	}

	@Override
	public void favAdd(UserfavoriteDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".favAdd", dto);
	}

	@Override
	public void favDelete(int uf_number) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".favDelete", uf_number); 
		
	}

	@Override
	public int favLikeMovie(int FK_u_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".find", FK_u_number);
	}
}