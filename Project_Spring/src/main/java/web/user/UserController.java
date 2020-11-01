package web.user;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/createUser.do")
	public String insertUser(UserVO vo) {
		userService.insertUser(vo);
		return "getUserList.do";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateUser(UserVO vo) {
		userService.updateUser(vo);
		return "getUserList.do";
	}
	
	@RequestMapping("/delUser.do")
	public String deleteUser(UserVO vo,  ServletRequest req) {
		userService.deleteUser(vo);
		return "redirect:getUserList.do";
	}
	
	@RequestMapping(value="/getUser.do")
	public ModelAndView getUser(UserVO vo, ModelAndView mav, ServletRequest req) {
		mav.addObject("user", userService.getUser(vo));
		mav.setViewName("/user/editUser.jsp");
		return mav;
	}
	
	@RequestMapping(value="/getUserList.do")
	public ModelAndView getUserList(UserVO vo, ModelAndView mav, HttpSession session) {
		mav.addObject("userList", userService.getUserList(vo));
		mav.setViewName("redirect:index.jsp");
		try {
			if(((UserVO)session.getAttribute("loger")).getUauth() == 1)
				mav.setViewName("/user/users.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
