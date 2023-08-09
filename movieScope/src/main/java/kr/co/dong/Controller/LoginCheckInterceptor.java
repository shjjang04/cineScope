package kr.co.dong.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginCheckInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 로그인 여부 체크 로직 작성
		// 로그인되어 있지 않으면 로그인 페이지로 redirect
		HttpSession session = request.getSession();

		if (session.getAttribute("u_number") == null) {
			response.sendRedirect("login");
			System.out.println("로그인 안해서 login페이지로 이동");
			return false; // 핸들러 메소드 호출 종료
		}
		System.out.println("로그인했음");
		return true; // 핸들러 메소드 호출 계속 진행
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

	// postHandle() 메소드와 afterCompletion() 메소드는 생략합니다.
}
