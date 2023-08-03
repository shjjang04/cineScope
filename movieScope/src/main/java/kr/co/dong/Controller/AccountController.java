package kr.co.dong.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.UserDTO;
import kr.co.dong.service.AccountService;

@Controller
public class AccountController {
	
	@Autowired
	AccountService service;
	
	@GetMapping("register")
	public String register() {
		return "register";
	}
	
	@PostMapping("register")
	public ModelAndView register(UserDTO dto) {
		ModelAndView mav = new ModelAndView();
		
		if(service.idCheck(dto.getU_id()) == null) {
			service.insert(dto);
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:/register");
		}
		return mav;
	}

	@GetMapping("update")
	public String update() {
		return "update";
	}
	
	@PostMapping("update")
	public ModelAndView update(UserDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		dto.setU_number(Integer.parseInt(String.valueOf(session.getAttribute("user"))));
		service.update(dto);
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@GetMapping("delete")
	public String delete(int u_number) {
		service.delete(u_number);
		return "main";
	}
	
}
