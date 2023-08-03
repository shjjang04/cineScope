package kr.co.dong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.ArticleDAO;
import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;
@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	ArticleDAO articleDAO;
	@Autowired
	BoardDAO boardDAO;
	
	@Override //모두보기
	public List<ArticleDTO> article_listall(int FK_b_number) {
		// TODO Auto-generated method stub
		return articleDAO.listall(FK_b_number);
	}
	
	@Override //c
	public void article_insert(ArticleDTO aD) {
		// TODO Auto-generated method stub
		System.out.println("서비스");
		articleDAO.insert(aD);
	}
	
	@Override //r
	public void article_check(int FK_u_number) {
		// TODO Auto-generated method stub
		
	}

	@Override //u
	public void article_update(ArticleDTO aD) {
		// TODO Auto-generated method stub
		articleDAO.update(aD);
	}

	@Override //d
	public void article_delete(int a_number) {
		// TODO Auto-generated method stub
		articleDAO.delete(a_number);
	}

	@Override //모두보기
	public List<BoardDTO> board_listAll() {
		// TODO Auto-generated method stub
		return boardDAO.listAll();
	}

	@Override //c
	public void board_insert(BoardDTO bD) {
		// TODO Auto-generated method stub
		boardDAO.insert(bD);
	}

	@Override
	public BoardDTO board_detail(int b_number) {
		// TODO Auto-generated method stub
		return boardDAO.detail(b_number);
	}

	@Override
	public void board_update(BoardDTO bD) {
		// TODO Auto-generated method stub
		System.out.println("서비스 임플");
		boardDAO.update(bD);
	}

	@Override
	public void board_delete(int b_number) {
		// TODO Auto-generated method stub
		boardDAO.delete(b_number);
	}

	@Override
	public List<BoardDTO> checkAll(int FK_u_number) {
		// TODO Auto-generated method stub
		return boardDAO.checkAll(FK_u_number);
	}

	@Override
	public void board_article_delete(int b_number) {
		// TODO Auto-generated method stub
		System.out.println("서비스");
		System.out.println(b_number);
		articleDAO.board_article_delete(b_number);
	}

}
