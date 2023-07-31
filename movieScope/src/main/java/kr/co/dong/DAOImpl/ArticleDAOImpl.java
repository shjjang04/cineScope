package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.ArticleDAO;
import kr.co.dong.DTO.ArticleDTO;
@Repository
public class ArticleDAOImpl implements ArticleDAO {
	private SqlSession sqlsession;

	private final static String namespace = "kr.co.dong.articleMapper";

	@Override
	public void check(int FK_u_number) {
		// TODO Auto-generated method stub
		sqlsession.selectOne(namespace+".check", FK_u_number);
	}

	@Override
	public void delete(int a_number) {
		// TODO Auto-generated method stub
		sqlsession.delete(namespace+".delete",a_number);
	}

	@Override
	public void insert(ArticleDTO aD) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace+".insert",aD);
	}

	@Override
	public List<ArticleDTO> listall(int FK_b_number) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".listall",FK_b_number);
	}

	@Override
	public void update(ArticleDTO aD) {
		// TODO Auto-generated method stub
		sqlsession.update(namespace+".update",aD);
	}

}
