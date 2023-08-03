package kr.co.dong.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.BigIntegerTypeHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.RedirectAttributesMethodArgumentResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private BoardService boardService;
	
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
	//게시판 글쓰기Get
	@GetMapping("boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	//게시판 글쓰기Post
	@PostMapping("boardWrite")
	public String boardWritePro(BoardDTO boardDTO) {
		System.out.println("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB");
		System.out.println(boardDTO);
		boardService.board_insert(boardDTO);
		System.out.println("BoardController-board_insert");
		return "redirect:boardListAll";
	}
	//게시판 글 상세조회
	@GetMapping({"board_Detail","board_Modify"})
	public void board_Detail(@RequestParam("b_number") int b_number, Model model) {
		model.addAttribute("board", boardService.board_detail(b_number));
		model.addAttribute("article", boardService.article_listall(b_number));
	}
	
	//게시판 글 수정
	@GetMapping("board__Modify")
	public String board__Modify() {
		System.out.println("게시판 글 수정");
		return "board_Modify";
	}
	
	@PostMapping("board__Modify")
	public String board__Modify(int b_number) {
		boardService.board_update(boardService.board_detail(b_number));
		return "redierct:/boardListAll";
	}
	
	//게시판 글 삭제
	@RequestMapping(value = "board__remove", method = RequestMethod.GET)
	public String board__remove(@RequestParam("b_number") int b_number) {
		System.out.println("게시판 글 삭제");
		boardService.board_article_delete(b_number);
		System.out.println("컨트롤러");
		boardService.board_delete(b_number);
		return "boardListAll";
	}
	
	//게시판 글에 댓글 전체조회
	//게시판 글에 댓글 작성
	//게시판 글에 댓글 수정
	//게시판 글에 댓글 삭제
}
