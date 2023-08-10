package kr.co.dong.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.service.SignupService;

@Controller
public class SignupController {

	@Autowired
	private SignupService service;

	// 회원가입
	@GetMapping("Signup")
	public String Signup() {
		return "Signup";
	}

	@PostMapping("Signup")
	public ModelAndView Signup(SignupDTO dto) {
		ModelAndView mav = new ModelAndView();
		if (service.idCheck(dto.getU_id()) == null) {
			service.insert(dto);
			mav.setViewName("redirect:/");
		} else {
			mav.setViewName("redirect:/Signup");
		}
		return mav;
	}

//	@RequestMapping(value = "/Checkid", method = RequestMethod.GET)
//	public ModelAndView Checkid(String u_id) {
//		ModelAndView mav = new ModelAndView();
//		int result = service.Checkid(u_id);
//		mav.addObject("result", result);
//		mav.setViewName("Signup");
//		return mav;
//	}
	
	@ResponseBody
	@PostMapping("Checkid")
	public int Checkid(@RequestParam("u_id") String u_id) {
//		System.out.println("dddd : " + u_id);
		int result = service.Checkid(u_id);
		return result;
	}
}