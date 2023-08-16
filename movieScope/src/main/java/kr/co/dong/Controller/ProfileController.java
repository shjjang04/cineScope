package kr.co.dong.Controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.SignupDAO;
import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.VO.BoardVO;
import kr.co.dong.service.BoardService;
import kr.co.dong.service.MovieDetailService;
import kr.co.dong.service.ProfileService;
import kr.co.dong.utils.Criteria;
import kr.co.dong.utils.PageDTO;

@Controller
public class ProfileController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private ProfileService profileService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private MovieDetailService movieService;
	@Autowired
	private MovieDAO moviedao;
	@Autowired
	private SignupDAO signupdao;

	@GetMapping("profile")
	public ModelAndView profile(HttpSession session) {
		logger.info("프로필 페이지로 이동");
		ModelAndView mav = new ModelAndView();
		if(session == null || session.getAttribute("user") == null) {
	        return new ModelAndView("redirect:/login");
	    }
		int num = Integer.parseInt(String.valueOf(session.getAttribute("user")));
		mav.addObject("u_id", profileService.userDetail(num).getU_id());
		List<UserfavoriteDTO> favList = profileService.userFav(num);
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		for(UserfavoriteDTO dto : favList) {
			list.add(moviedao.detail(dto.getFK_m_number()));
		}
		System.out.println(list);
		mav.addObject("favList", list);
		mav.setViewName("profile");
		return mav;
	}
	@GetMapping("profile_board")
	public ModelAndView profile_board(HttpSession session, Criteria cri) throws UnsupportedEncodingException { 
		logger.info("프로필 페이지로 이동");
		
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(String.valueOf(session.getAttribute("user")));
		mav.addObject("u_id", profileService.userDetail(num).getU_id());
		logger.info("list: " + cri);
		List<BoardDTO> boardListAll = boardService.board_listAll3(cri, num);
		List<BoardVO> boardVo = new ArrayList<BoardVO>();
		for(BoardDTO board : boardListAll) {
			BoardVO tmp = new BoardVO();
			tmp.setU_id(signupdao.selectOne(board.getFK_u_number()).getU_id());
			tmp.setB_title(board.getB_title());
			tmp.setB_cnt(board.getB_cnt());
			tmp.setB_context(board.getB_context());
			tmp.setB_number(board.getB_number());
			tmp.setB_date(board.getB_date());
			boardVo.add(tmp);
		}
		mav.addObject("boardListAll",boardVo);
		mav.addObject("pageMaker", new PageDTO(cri, boardService.checkAll(num).size()));
		mav.setViewName("profile_board");
		return mav;
	}
	@GetMapping("profile/board1")
	public ModelAndView profileBoard(int FK_u_number) {
		logger.info("보드에서 내가 작성한 글 불러오기");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardList = boardService.checkAll(FK_u_number);
		mav.addObject("boardList", boardList);
		mav.setViewName("profile");
		return mav;
	}

	/*@GetMapping("profile/userinfo")
	public ModelAndView userinfo(int u_number) {
		logger.info("내 정보 불러오기");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardList = boardService.(u_number);
		mav.addObject("boardList", boardList);
		mav.setViewName("board");
		return mav;
	}*/
	
	@GetMapping("profile/userfavcheck")
	public ModelAndView userfavcheck(int u_number) {
		logger.info("유저 찜 목록 불러오기");
		ModelAndView mav = new ModelAndView();
		List<UserfavoriteDTO> favList = profileService.userFav(u_number);
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		for(UserfavoriteDTO dto : favList) {
			list.add(moviedao.detail(dto.getFK_m_number()));
		}
		System.out.println(list);
		mav.addObject("favList", list);
		mav.setViewName("profile");
		return mav;
	}
//	@GetMapping("profile/userfavdel")
//	public ModelAndView userfavdel(int uf_number,int u_number) {
//		logger.info("유저 찜 항목 삭제");
//		ModelAndView mav = new ModelAndView();
//		profileService.userFavDel(uf_number);
//		List<UserfavoriteDTO> favList = profileService.userFav(u_number);
//		mav.addObject("favList", favList);
//		mav.setViewName("profile");
//		return mav;
//	}
}
