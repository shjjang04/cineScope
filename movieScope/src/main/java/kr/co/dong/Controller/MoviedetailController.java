package kr.co.dong.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.service.MovieDetailService;

@Controller
public class MoviedetailController {

	@Autowired
	private MovieDetailService service;
	
	@GetMapping("movieDetail")
	public ModelAndView movieDetail(int m_number, HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", service.movieDetail(m_number));
		mav.setViewName("movieDetail");
		return mav;
	}
	
}
