package kr.co.ocube.hpm.user.control;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ocube.hpm.user.vo.LoginVO;
@Controller
public class UserControl {

	@RequestMapping(value="/index.do",method= {POST,GET})
	public String doIndex(HttpSession session) {
		String uri ="user/home";//checkLogined("home",session);
		return uri;
	}//doIndex
	
	@RequestMapping(value="/menu.do",method= {GET})
	public String doMenu() {
		return "common/menu";
	}//doMenu
		
	@RequestMapping(value="/personal_info.do",method= {GET})
	public String doPersonalInfo(HttpSession session) {
		String uri = "user/personal_info";//checkLogined("personal_info",session);
		return uri;
	}//doPersonalInfo
	
	
	
	@RequestMapping(value="/login.do",method= {POST})
	public String doLogin(LoginVO lvo) {
		return "";
	}//doLogin
	
	
}//class
