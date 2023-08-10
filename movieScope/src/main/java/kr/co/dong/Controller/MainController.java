package kr.co.dong.Controller;

import java.lang.System.Logger;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
	
//	@GetMapping("/")
//	public ModelAndView main(HttpServletRequest request) throws Exception {
//		request.setCharacterEncoding("utf-8");
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("recommendList",service.recommend());
//		mav.addObject("randomList", service.random());
//		mav.setViewName("dummy");
//		return mav;
//	}
	
	@PostMapping("login")
	public String login(@RequestParam Map<String, Object> map, HttpSession session, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		String user = service.login(map);
		System.out.println(user);
		if(user == null) { // 로그인 실패
			return "redirect:login";
		}else { // 로그인 성공 -> 세션 부여
			session.setAttribute("user", user);
			return "redirect:/";
		}
	}
	@GetMapping("login")
	public String loginForm() {
		return "login";
	}
}
