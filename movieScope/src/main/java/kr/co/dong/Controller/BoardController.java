package kr.co.dong.Controller;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;
import kr.co.dong.utils.Criteria;
import kr.co.dong.utils.PageDTO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private BoardService boardService;
	
	//더미체크
	@GetMapping("dummy")
	public ModelAndView dummy(HttpSession session) {
	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("dummy");
	    String user = (String) session.getAttribute("user");
	    if(user != null) {
	        mav.addObject("user", user);
		    System.out.println("user: " + user);
	    }
	    return mav;
	}
	//게시판 전체조회
//	@GetMapping("boardListAll")
//	public ModelAndView boardListAll(HttpServletRequest request) throws UnsupportedEncodingException {
//	    // 로그인 체크 인터셉터
//		request.setCharacterEncoding("utf-8");
//	    HttpSession session = request.getSession(false);
//	    if(session == null || session.getAttribute("user") == null) {
//	        return new ModelAndView("redirect:/login");
//	    }
//	    // request에서 user 파라미터 값 받아오기
//	    String user = request.getParameter("user");
//
//	    ModelAndView mav = new ModelAndView();
//	    List<BoardDTO> boardListAll = boardService.board_listAll();
//	    mav.addObject("boardListAll",boardListAll);
//	    mav.addObject("user",user);
//	    mav.setViewName("boardListAll");
//	    return mav;
//	}
	@GetMapping("boardListAll")
	public ModelAndView boardListAll(Criteria cri, HttpServletRequest request) throws UnsupportedEncodingException {
		// 로그인 체크 인터셉터
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("user") == null) {
			return new ModelAndView("redirect:/login");
		}
		// request에서 user 파라미터 값 받아오기
		String user = request.getParameter("user");
		
		ModelAndView mav = new ModelAndView();
		logger.info("list: " + cri);
		List<BoardDTO> boardListAll = boardService.board_listAll2(cri);
		mav.addObject("boardListAll",boardListAll);
		mav.addObject("pageMaker", new PageDTO(cri, boardService.board_listAll().size()));
		mav.addObject("user",user);
		mav.setViewName("boardListAll");
		return mav;
	}
	
	
	
	
	
	//게시판 글쓰기Get
	@GetMapping("boardWrite")
	public String boardWrite(@RequestParam("user") int user, HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		return "boardWrite";
	}
	//게시판 글쓰기Post
	@PostMapping("boardWrite")
	public String boardWritePro(BoardDTO boardDTO, @RequestParam("user") int user,HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		logger.info("title: " + boardDTO.getB_title());
		
		if (boardDTO.getB_title() == "") {
			System.out.println("제목이 입력되지 않음");
			return "redirect:boardListAll";
		}
		System.out.println("보드라이투");
		System.out.println(boardDTO);
		System.out.println(boardDTO.getB_title());
		boardService.board_insert(boardDTO);
		System.out.println("BoardController-board_insert");
		return "redirect:boardListAll";
	}
	
	//게시판 글 상세조회Get
	@GetMapping("board_Detail")
	public void board_Detail(@RequestParam("b_number") int b_number, Model model, @RequestParam("user") int user) {
		model.addAttribute("board", boardService.board_detail(b_number));
		BoardDTO dto = boardService.board_detail(b_number);
		int gett = dto.getB_cnt();
		gett++;
		dto.setB_cnt(gett);
		boardService.board_update(dto);
		System.out.println("받은 유저 넘버: " + user);
		//게시판 글에 댓글 전체조회
		model.addAttribute("article", boardService.article_listall(b_number));
	}
	
	//게시판 글 수정Get
	@GetMapping("board_Modify")
	public String board_Modify(Model model, int b_number) {
		System.out.println("게시판 글 수정 open");
		model.addAttribute("board", boardService.board_detail(b_number));
		return "board_Modify";
	}
	//게시판 글 수정Post
	@PostMapping("board_Modify")
	public ModelAndView board_Modify(BoardDTO boardDTO) {
		logger.info("boardDTO : " + boardDTO);
		ModelAndView mav = new ModelAndView();
		if (boardService.board_detail(boardDTO.getB_number()).getB_title() == "") {
			System.out.println("제목이 입력되지 않음");
			mav.setViewName("redirect:boardListAll");
			return mav;
		}
		System.out.println("게시판 글 수정중....");
		boardService.board_update(boardDTO);
		System.out.println("게시판 글 수정 완료");
		mav.addObject("board", boardDTO);
		mav.setViewName("board_Detail");
		return mav;
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
	//게시판 글 댓글 조회는 보드디테일에 있음
	//게시판 글에 댓글 작성Get
	@GetMapping("article_Insert")
	public String article_Insert(@RequestParam("user") int user, @RequestParam("b_number") int b_number) {
		System.out.println("댓글작성에 들어옴");
		System.out.println("b_number: " + b_number);
		System.out.println("user: " + user);
		return "article_Insert";
	}
	//게시판 글에 댓글 작성Post
	@PostMapping("article_Insert")
	public String article_Insert2(String a_context, @RequestParam("user") int user, @RequestParam("b_number") int b_number) {
		System.out.println("댓글작성 시도중...");
		if (a_context == "") {
			System.out.println("내용이 입력되지 않음");
			return "redirect:/board_Detail?b_number=" + b_number + "&user=" + user;
		}
		System.out.println("b_number: " + b_number);
		System.out.println("user: " + user);
		ArticleDTO dto = new ArticleDTO();
		dto.setA_context(a_context);
	    	LocalDate localDate = LocalDate.now(); // 현재 날짜 얻기
	    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd"); // 날짜 포맷 지정
	    	String formattedDate = localDate.format(formatter); // 포맷에 따라 문자열로 변환
	    	System.out.println("Date: " + formatter);
	    dto.setA_date(formattedDate);
		dto.setFK_b_number(b_number);
		dto.setFK_u_number(user);
		System.out.println("dto: " + dto);
		boardService.article_insert(dto);
		
		return "redirect:/board_Detail?b_number=" + b_number + "&user=" + user;
	}
	//게시판 글에 댓글 수정Get
	@GetMapping("article_Modify")
	public ModelAndView article_Modify(int a_number, @RequestParam("user") int user, @RequestParam("b_number") int b_number) {
	    ModelAndView mav = new ModelAndView();
	    ArticleDTO dto = boardService.article_check(a_number);
	    
	    // 게시글 작성자와 현재 로그인한 사용자가 다른 경우에 이전 페이지로 이동
	    if (dto.getFK_u_number() != user) {
	        mav.setViewName("redirect:board_Detail?b_number=" + b_number + "&user=" + user); // redirect를 사용하여 boardListAll로 이동
	        return mav;
	    }
	    
	    mav.addObject("dto", dto);
	    mav.addObject("user", user);
	    mav.setViewName("article_Modify");
	    return mav;
	}

	//게시판 글에 댓글 수정Post
	@PostMapping("article_Modify")
	public ModelAndView article_Modify2(ArticleDTO dto, @RequestParam("user") int user) {
		ModelAndView mav = new ModelAndView();
		if (dto.getA_context() == "") {
			System.out.println("내용이 입력되지 않음");
			mav.setViewName("redirect:/board_Detail?b_number=" + dto.getFK_b_number() + "&user=" + user);
			return mav;
		}
	    boardService.article_update(dto);
	    mav.setViewName("redirect:/board_Detail?b_number=" + dto.getFK_b_number() + "&user=" + user); // user 값을 다시 전달
	    return mav;
	}

	
	//게시판 글에 댓글 삭제
	@GetMapping("article_Remove")
	public ModelAndView article_Remove(int a_number, int b_number, @RequestParam("user") int user) {
	    ModelAndView mav = new ModelAndView();
	    ArticleDTO dto = boardService.article_check(a_number);
	    if (dto.getFK_u_number() != user) {
	        mav.setViewName("redirect:board_Detail?b_number=" + b_number + "&user=" + user); // redirect를 사용하여 boardListAll로 이동
	        return mav;
	    }
		System.out.println("댓글삭제");
		boardService.article_delete(a_number);
		mav.setViewName("redirect:/board_Detail?b_number=" + b_number + "&user=" + user);
		return mav;
	}
}
