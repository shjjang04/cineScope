package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.ArticleDAO;
import kr.co.dong.DTO.ArticleDTO;
@Repository
public class ArticleDAOImpl implements ArticleDAO {
	@Autowired
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
		return sqlsession.selectList(namespace+".article_listall",FK_b_number);
	}

	@Override
	public void update(ArticleDTO aD) {
		// TODO Auto-generated method stub
		sqlsession.update(namespace+".update",aD);
	}

	@Override
	public void board_article_delete(int b_number) {
		// TODO Auto-generated method stub
		System.out.println("디에이오");
		int tmp =  sqlsession.delete(namespace+".board_article_delete",b_number);
		System.out.println("tmp : "+tmp);
	}

}
