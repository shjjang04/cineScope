package kr.co.dong.Controller;

import java.io.IOException;
import java.lang.System.Logger;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.service.MainService;
import kr.co.dong.serviceImpl.MainServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@GetMapping("/")
	public ModelAndView main(HttpServletRequest request, HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		mav.addObject("recommendList",service.recommend());
		if(session.getAttribute("user") != null) {
		mav.addObject("fav", service.favCheck(Integer.parseInt(String.valueOf(session.getAttribute("user")))));
		System.out.println(service.favRecommend(Integer.parseInt(String.valueOf(session.getAttribute("user")))));
		mav.addObject("recommendList2", service.favRecommend(Integer.parseInt(String.valueOf(session.getAttribute("user")))));
		}
		mav.addObject("randomList", service.random());
		mav.setViewName("home");
		return mav;
	}
	
	@PostMapping("login")
	public ModelAndView login(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
	    ModelAndView mav = new ModelAndView();
	    String user = service.login(map);
	    System.out.println("user: " + user);
	    if (user == null) { // 로그인 실패
	        mav.setViewName("redirect:login");
	    } else { // 로그인 성공 -> 세션 부여
	        session.setAttribute("user", user);
	        mav.addObject("user", user); // ModelAndView 객체에 user 값 추가
	        mav.setViewName("redirect:/");
	    }
	    return mav;
	}
	
	@GetMapping("login")
	public String loginForm() {
		return "login";
	}
	
	@GetMapping("logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String referer = request.getHeader("Referer");
		System.out.println("로그아웃 진행");
		session.setAttribute("user", null);
		response.sendRedirect("/dong/");
		
	}
	
}
