package kr.co.dong.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.BoardDTO;
public interface BoardDAO {
	public List<BoardDTO> listAll();
	public void delete(int b_number);
	public void update(BoardDTO bD);
	public BoardDTO detail(int b_number);
	public void insert(BoardDTO bD);
	public List<BoardDTO> checkAll(int uno);
}