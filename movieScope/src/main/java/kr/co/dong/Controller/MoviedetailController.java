package kr.co.dong.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.MovieDetailService;
import kr.co.dong.service.SearchService;

@Controller
public class MoviedetailController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private MovieDetailService service;
	
	@ResponseBody
	@GetMapping("movieDetail")
	public ModelAndView movieDetail(int m_number, HttpServletRequest request, HttpSession session) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", service.userFav(m_number));
		mav.addObject("movie", service.movieDetail(m_number));
		Map<String, String> map = new HashMap<String, String>();
		map.put("FK_u_number", String.valueOf(session.getAttribute("user")));
		map.put("FK_m_number", String.valueOf(m_number));
		mav.addObject("fav", service.favCheck(map));
		mav.addObject("m_number", String.valueOf(m_number));
		if(session.getAttribute("user") != null) {
			mav.addObject("u_number", Integer.parseInt(String.valueOf(session.getAttribute("user"))));
		}
		mav.setViewName("movieDetail");
		return mav;
	}

	@GetMapping("movieDetail/add")
	public ModelAndView add(int FK_m_number, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(FK_m_number);
		UserfavoriteDTO dto = new UserfavoriteDTO();
		dto.setFK_m_number(FK_m_number);
		dto.setFK_u_number(Integer.parseInt(String.valueOf(session.getAttribute("user"))));
		System.out.println(dto);
		service.favAdd(dto);
		mav.setViewName("redirect:/movieDetail?m_number=" + FK_m_number);
		return mav;
	}
	
}