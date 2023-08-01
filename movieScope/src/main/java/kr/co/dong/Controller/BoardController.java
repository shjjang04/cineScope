package kr.co.dong.Controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private BoardService boardService;

//	@GetMapping("board")
//	public ModelAndView board() {
//		ModelAndView mav = new ModelAndView();
//		List<BoardDTO> boardList = boardService.board_listAll();
//		mav.addObject("boardList", boardList);
//		mav.setViewName("board");
//		return mav;
//	}
//
//	@GetMapping("board/b_number")
//	public ModelAndView board_b_number(int b_number) {
//		logger.info("보드상세보여줌");
//		ModelAndView mav = new ModelAndView();
//		BoardDTO board_Detail = boardService.board_detail(b_number);
//		List<ArticleDTO> article_All = boardService.article_listall(b_number);
//		mav.addObject("board_Detail", board_Detail);
//		mav.addObject("article_All",article_All);
//		mav.setViewName("board_Detail");
//		return mav;
//	}
	
	//더미체크
	@GetMapping("dummy")
	public String dummy() {
		return "dummy";
	}

//	//게시판 틀만 보기
//	@GetMapping("boardListAll")
//	public String boardListAll() {
//		return "boardListAll";
//	}
	
	//게시판 전체조회
	@GetMapping("boardListAll")
	public String boardListAll() {
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardListAll = boardService.board_listAll();
		mav.add("boardListAll",boardListAll);
		System.out.println("BoardController-boardListAll");
		return "boardListAll";
	}
	
	
	//게시판 글쓰기
	@GetMapping("boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	@PostMapping("boardWrite")
	public String boardWritePro(BoardDTO boardDTO) {
		System.out.println("BoardController-boardWrite");
		boardService.board_insert(boardDTO);
		return "redirect:boardListAll";
	}

}
