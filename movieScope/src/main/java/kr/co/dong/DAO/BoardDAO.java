package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.utils.Criteria;
public interface BoardDAO {
	public List<BoardDTO> listAll();
	public void delete(int b_number);
	public void update(BoardDTO bD);
	public BoardDTO detail(int b_number);
	public void insert(BoardDTO bD);
	public List<BoardDTO> checkAll(int uno);
	public List<BoardDTO> getListWithPaging(Criteria cri);
	public List<BoardDTO> getListWithPaging(Criteria cri, int FK_u_number);
	public int checkNum(int FK_u_number);
}