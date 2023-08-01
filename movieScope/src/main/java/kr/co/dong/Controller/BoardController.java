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

	//게시판 전체조회
	@GetMapping("boardListAll")
	public ModelAndView boardListAll() {
		ModelAndView mav = new ModelAndView();
		logger.info("======================> 보드리스트 페이지로 이동");
		List<BoardDTO> boardListAll = boardService.board_listAll();
		logger.info("리스트 : " + boardListAll );
		mav.addObject("boardListAll",boardListAll);
		mav.setViewName("boardListAll");
		System.out.println("BoardController-boardListAll");
		return mav;
	}
	
	
	//게시판 글쓰기
	@GetMapping("boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	
	@PostMapping("boardWrite")
	public String boardWritePro(BoardDTO boardDTO) {
		System.out.println("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB");
		System.out.println(boardDTO);
		boardService.board_insert(boardDTO);
		System.out.println("BoardController-board_insert");
		return "redirect:boardListAll";
	}

}
