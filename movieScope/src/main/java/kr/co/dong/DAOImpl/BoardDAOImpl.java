package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	private SqlSession sqlsession;
	private final static String namespace = "kr.co.dong.boardMapper";
   
   @Override
   public List<BoardDTO> board_listAll() {
      // TODO Auto-generated method stub
      return sqlsession.selectList(namespace+".board_listAll");
   }
   @Override
   public void delete(int b_number) {
      // TODO Auto-generated method stub
      sqlsession.delete(namespace+".delete", b_number);
   }
   @Override
   public void update(BoardDTO bD) {
      // TODO Auto-generated method stub
      sqlsession.update(namespace+".update", bD);
   }
   
   @Override
   public BoardDTO detail(int b_number) {
      // TODO Auto-generated method stub
	return sqlsession.selectOne(namespace+".detail",b_number);
   }
   
   @Override
   public void insert(BoardDTO bD) {
      // TODO Auto-generated method stub
      sqlsession.insert(namespace+".insert",bD);
   }
@Override
public BoardDTO write(int FK_u_number) {
	// TODO Auto-generated method stub
	return sqlsession.selectOne(namespace + ".write_board", FK_u_number);
}
//	@Override
//	public List<BoardDTO> listAll() {
//		// TODO Auto-generated method stub
//		return sqlsession.selectList(namespace + ".listAll");
//	}
//
//	@Override
//	public void delete(int b_number) {
//		// TODO Auto-generated method stub
//		sqlsession.delete(namespace + ".delete", b_number);
//	}
//
//	@Override
//	public void update(BoardDTO bD) {
//		// TODO Auto-generated method stub
//		sqlsession.update(namespace + ".update", bD);
//	}
//
//	@Override
//	public BoardDTO detail(int b_number) {
//		// TODO Auto-generated method stub
//		return sqlsession.selectOne(namespace + ".detail", b_number);
//	}
//
//	@Override
//	public void insert(BoardDTO bD) {
//		// TODO Auto-generated method stub
//		sqlsession.insert(namespace + ".insert", bD);
//	}

	@Override
	public List<BoardDTO> checkAll(int uno) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".checkAll", uno);
	}

}