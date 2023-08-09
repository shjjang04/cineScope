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
		return sqlSession.selectList(namespace + ".userfavorite_check", u_number);
	}

	@Override
	public void favAdd(UserfavoriteDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".userfavorite_add", dto);
	}

	@Override
	public void favDelete(int uf_number) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".userfavorite_delete", uf_number); 
		
	}

	@Override
	public int favLikeMovie(int FK_u_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".userfavorite_find", FK_u_number);
	}

	@Override
	public List<UserfavoriteDTO> favList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".userfavoriteList");
	}
}