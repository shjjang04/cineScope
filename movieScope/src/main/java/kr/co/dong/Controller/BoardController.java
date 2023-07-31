package kr.co.dong.Controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private BoardService boardService;

	@GetMapping("board")
	public ModelAndView board() {
		logger.info("보드전체보여줌");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardList = boardService.board_listAll();
		mav.addObject("boardList", boardList);
		mav.setViewName("board");
		return mav;
	}

	@GetMapping("board/b_number")
	public ModelAndView board_b_number(int b_number) {
		logger.info("보드상세보여줌");
		ModelAndView mav = new ModelAndView();
		BoardDTO board_Detail = boardService.board_detail(b_number);
		List<ArticleDTO> article_All = boardService.article_listall(b_number);
		mav.addObject("board_Detail", board_Detail);
		mav.addObject("article_All",article_All);
		mav.setViewName("board_Detail");
		return mav;
	}
}
