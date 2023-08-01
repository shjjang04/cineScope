package kr.co.dong.service;

import java.util.List;

import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;

public interface BoardService {
	public List<ArticleDTO> article_listall(int FK_b_number); //모두조회
	public void article_insert(ArticleDTO aD); //c
	public void article_check(int FK_u_number); //r
	public void article_update(ArticleDTO aD); //u
	public void article_delete(int a_number); //d
	public List<BoardDTO> board_listAll(); //모두보이기
	public void board_insert(BoardDTO bD); //c
	public BoardDTO board_detail(int b_number); //r
	public void board_update(BoardDTO bD); //u
	public void board_delete(int b_number); //d
	public List<BoardDTO> checkAll(int FK_u_number);
}
