package kr.co.dong.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.service.SignupService;
@ResponseBody
@Controller
public class SignupController {

	@Autowired
	private SignupService service;

	// 회원가입
	@GetMapping("Signup")
	public String Signup() {
		System.out.println("dsfgdsdgjgh");
		return "signup";
	}
	
	@PostMapping("Signup")
	public ModelAndView Signup(SignupDTO dto) {
		ModelAndView mv = new ModelAndView();
	if (service.idCheck(dto.getU_id()) == null) {
		service.insert(dto);
		mv.setViewName("redirect:/");
	}else {
		mv.setViewName("redirect:/Signup");
	}
		return mv;
	}

}
