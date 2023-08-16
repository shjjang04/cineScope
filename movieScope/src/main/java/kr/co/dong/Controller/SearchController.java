package kr.co.dong.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Session;

import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.VO.MovieVO;
import kr.co.dong.service.SearchService;
import kr.co.dong.utils.PagingVO;

/**
 * Handles requests for the application search page.
 */
@Controller
public class SearchController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private SearchService searchService;
//	@Autowired
//	private MovieVO mVo;
	
	
	@GetMapping("search")
	public String search() {
		logger.info("============== > search페이지로 이동");
		return "search";
	}
	
//	@GetMapping("movieDetail")
//	public ModelAndView movieDetail(int m_number, HttpServletRequest request) throws Exception{
//		request.setCharacterEncoding("utf-8");
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("list", service.movieDetail(m_number));
//		mav.setViewName("movieDetail");
//		return mav;
//	}
	
//	@GetMapping("searchresult")
//	public ModelAndView searchresult() {
//		logger.info("============== > resultsearch페이지로 이동");
//		ModelAndView mav = new ModelAndView();
//		
//		mav.setViewName("searchresult");
//		return mav;
//	}
	
	
	@GetMapping("search/name")
	public ModelAndView name(PagingVO vo, MovieVO mVo, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpSession session) {
		logger.info("mVo : " + mVo);
		logger.info("mVo 의 genre" + mVo.getM_genre());
		ModelAndView mav = new ModelAndView();
		
		List<Integer> movieList = searchService.searchCollectAll(mVo);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		int total = movieList.size();  //총 영화 갯수
		int numInPage = 8;	//한페이지에 보여줄 영화갯수
		int pageTotal = (movieDtoList.size() / numInPage) + 1;	// 전체 페이지 갯수
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = String.valueOf(numInPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = String.valueOf(numInPage);
		}
		for(int i = 0; i<pageTotal; i++) {
			List<MovieDTO> tmp = new ArrayList<MovieDTO>();
			for(int j = 0; j<numInPage; j++) {
				if((j+i*numInPage) == movieDtoList.size())
					break;
				tmp.add(movieDtoList.get(j+i*numInPage));
			}
			if((i+1) == Integer.parseInt(nowPage)) {
				mav.addObject("movieDtoList", tmp);
			}
		}
		session.setAttribute("mlist", movieList);
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		mav.addObject("paging", vo);
		mav.addObject("numInPage", numInPage);
		mav.addObject("pageTotal", pageTotal);
//		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	
	@GetMapping("searchresult")
	public ModelAndView searchresult(PagingVO vo, HttpSession session, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		ModelAndView mav = new ModelAndView();
		
		logger.info("movieList : " + session.getAttribute("mlist"));
		logger.info("session user : " + session.getAttribute("user"));
		List<Integer> movieList=(List<Integer>)session.getAttribute("mlist");
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		int total = movieList.size();  //총 영화 갯수
		int numInPage = 8;	//한페이지에 보여줄 영화갯수
		int pageTotal = (movieDtoList.size() / numInPage) + 1;	// 전체 페이지 갯수
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = String.valueOf(numInPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = String.valueOf(numInPage);
		}
		for(int i = 0; i<pageTotal; i++) {
			List<MovieDTO> tmp = new ArrayList<MovieDTO>();
			for(int j = 0; j<numInPage; j++) {
				if((j+i*numInPage) == movieDtoList.size())
					break;
				tmp.add(movieDtoList.get(j+i*numInPage));
			}
			if((i+1) == Integer.parseInt(nowPage)) {
				mav.addObject("movieDtoList", tmp);
			}
		}
		 
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		mav.addObject("paging", vo);
		mav.addObject("numInPage", numInPage);
		mav.addObject("pageTotal", pageTotal);
//		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	
	
	@GetMapping("search/age")
	public ModelAndView age(PagingVO vo, MovieVO mVo, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpSession session, String m_age) {
		int age = 101;
		if(m_age != null) {
			age = Integer.parseInt(m_age);
		}
		logger.info("m_age : " + m_age);
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_age(age);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		int total = movieList.size();  //총 영화 갯수
		int numInPage = 8;	//한페이지에 보여줄 영화갯수
		int pageTotal = (movieDtoList.size() / numInPage) + 1;	// 전체 페이지 갯수
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = String.valueOf(numInPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = String.valueOf(numInPage);
		}
		for(int i = 0; i<pageTotal; i++) {
			List<MovieDTO> tmp = new ArrayList<MovieDTO>();
			for(int j = 0; j<numInPage; j++) {
				if((j+i*numInPage) == movieDtoList.size())
					break;
				tmp.add(movieDtoList.get(j+i*numInPage));
			}
			if((i+1) == Integer.parseInt(nowPage)) {
				mav.addObject("movieDtoList", tmp);
			}
		}
		session.setAttribute("mlist", movieList);
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		mav.addObject("paging", vo);
		mav.addObject("numInPage", numInPage);
		mav.addObject("pageTotal", pageTotal);
//		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	@GetMapping("search/genre")
	public ModelAndView genre(PagingVO vo, MovieVO mVo, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpSession session, String m_genre) {
		logger.info("m_genre : " + m_genre);
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_genre(m_genre);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		int total = movieList.size();  //총 영화 갯수
		int numInPage = 8;	//한페이지에 보여줄 영화갯수
		int pageTotal = (movieDtoList.size() / numInPage) + 1;	// 전체 페이지 갯수
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = String.valueOf(numInPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = String.valueOf(numInPage);
		}
		for(int i = 0; i<pageTotal; i++) {
			List<MovieDTO> tmp = new ArrayList<MovieDTO>();
			for(int j = 0; j<numInPage; j++) {
				if((j+i*numInPage) == movieDtoList.size())
					break;
				tmp.add(movieDtoList.get(j+i*numInPage));
			}
			if((i+1) == Integer.parseInt(nowPage)) {
				mav.addObject("movieDtoList", tmp);
			}
		}
		session.setAttribute("mlist", movieList);
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		mav.addObject("paging", vo);
		mav.addObject("numInPage", numInPage);
		mav.addObject("pageTotal", pageTotal);
//		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	@GetMapping("search/nation")
	public ModelAndView nation(PagingVO vo, MovieVO mVo, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpSession session, String m_nation) {
		logger.info("m_nation : " + m_nation);
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_nation(m_nation);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		int total = movieList.size();  //총 영화 갯수
		int numInPage = 8;	//한페이지에 보여줄 영화갯수
		int pageTotal = (movieDtoList.size() / numInPage) + 1;	// 전체 페이지 갯수
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = String.valueOf(numInPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = String.valueOf(numInPage);
		}
		for(int i = 0; i<pageTotal; i++) {
			List<MovieDTO> tmp = new ArrayList<MovieDTO>();
			for(int j = 0; j<numInPage; j++) {
				if((j+i*numInPage) == movieDtoList.size())
					break;
				tmp.add(movieDtoList.get(j+i*numInPage));
			}
			if((i+1) == Integer.parseInt(nowPage)) {
				mav.addObject("movieDtoList", tmp);
			}
		}
		session.setAttribute("mlist", movieList);
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		mav.addObject("paging", vo);
		mav.addObject("numInPage", numInPage);
		mav.addObject("pageTotal", pageTotal);
//		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}

	
	
}
