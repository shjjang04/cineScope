package kr.co.dong.DAOImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.utils.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlsession;
	private final static String namespace = "kr.co.dong.boardMapper";

	@Override
	public List<BoardDTO> board_listAll() {
		// TODO Auto-generated method stub
		List<BoardDTO> list = sqlsession.selectList(namespace + ".board_listAll");
		System.out.println(list);
		return list;
	}

	@Override
	public void delete(int b_number) {
		// TODO Auto-generated method stub
		sqlsession.delete(namespace + ".board_delete", b_number);
	}

	@Override
	public void update(BoardDTO bD) {
		// TODO Auto-generated method stub
		System.out.println("디에이오");
		sqlsession.update(namespace + ".board_update", bD);
	}

	@Override
	public BoardDTO detail(int b_number) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".board_detail", b_number);
	}

	@Override
	public void insert(BoardDTO bD) {
		// TODO Auto-generated method stub
		sqlsession.insert(namespace + ".board_insert", bD);
	}

	@Override
	public List<BoardDTO> checkAll(int uno) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".checkAll", uno);
	}

	@Override
	public List<BoardDTO> getListWithPaging(Criteria cri) {
		// 페이징 처리
		return sqlsession.selectList(namespace + ".getListWithPaging", cri);
	}

	@Override
	public int checkNum(int FK_u_number) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".board_check_num");
	}

}