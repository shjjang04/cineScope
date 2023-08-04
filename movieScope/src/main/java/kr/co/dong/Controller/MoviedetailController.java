package kr.co.dong.Controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.MovieDetailService;
import kr.co.dong.service.SearchService;

@Controller
public class MoviedetailController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private MovieDetailService service;
	private SearchService searchservice;
	
	@GetMapping("movieDetail")
	public ModelAndView movieDetail(int m_number, HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", service.userFav(m_number));
		mav.addObject("movie", service.movieDetail(m_number));
		mav.setViewName("movieDetail");
		return mav;
	}

}