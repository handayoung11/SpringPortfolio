package web.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@Autowired
	UserDAO userDAO;

	// 로그인 창에서 로그인 버튼을 클릭했을 경우
	@RequestMapping(value = "/login.do")
	public String login(UserVO vo, HttpSession session) {
		System.out.println("로그인 인증처리...");
		UserVO user = userDAO.getLoger(vo);
		if (user != null) {
			session.setAttribute("loger", user);
			return "redirect:index.jsp";
		}
		return "/user/login.jsp";
	}
	

	//상단바의 로그인 버튼을 눌렀을 경우
	@RequestMapping(value = "/logConnection.do")
	public String ConnectLog(HttpSession session) {
		if(session.getAttribute("loger") == null)
			return "/user/login.jsp";
		return "logout.do";
	}
	
	// 로그아웃 동작 실행
	@RequestMapping(value = "/logout.do")
	public String logOut(HttpSession session) {
		session.setAttribute("loger", null);
		return "redirect:index.jsp";
	}
}
