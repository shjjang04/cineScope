package kr.co.dong.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.VO.MovieVO;
import kr.co.dong.service.SearchService;

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
	public ModelAndView name(MovieVO mVo, HttpServletRequest request) throws Exception{
		logger.info("mVo : " + mVo);
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		
		List<Integer> movieList = searchService.searchCollectAll(mVo);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	
	@GetMapping("search/age")
	public ModelAndView age(int m_age, HttpServletRequest request) throws Exception{
		logger.info("m_age : " + m_age);
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_age(m_age);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		mav.addObject("movieDtoList", movieDtoList);
		mav.addObject("movieList", movieList);
		mav.setViewName("searchresult");
		return mav;
	}
	@GetMapping("search/genre")
	public ModelAndView genre(String m_genre, HttpServletRequest request) throws Exception {
		logger.info("m_genre : " + m_genre);
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_genre(m_genre);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		mav.addObject("movieList", movieList);
		mav.addObject("movieDtoList", movieDtoList);
		mav.setViewName("searchresult");
		return mav;
	}
	@GetMapping("search/nation")
	public ModelAndView nation(String m_nation, HttpServletRequest request) throws Exception{
		logger.info("m_nation : " + m_nation);
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		List<Integer> movieList = searchService.searchAllM_nation(m_nation);
		List<MovieDTO> movieDtoList = new ArrayList<MovieDTO>();
		for(int i = 0; i<movieList.size(); i++) {
			movieDtoList.add(searchService.searchDetail(movieList.get(i)));
			movieDtoList.get(i).setM_number(movieList.get(i));
		}
		logger.info("movieList : " + movieList);
		mav.addObject("movieList", movieList);
		mav.addObject("movieDtoList", movieDtoList);
		mav.setViewName("searchresult");
		return mav;
	}

	
	
}
