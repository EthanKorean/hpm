package kr.co.ocube.hpm.user.util;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class SessionUtil {
	private SessionUtil() {}
	
	public static String checkLogined(String uri,HttpSession session) {
		if(session.getAttribute("user")==null) {
			uri="login";
		}//end if
		return uri;
	}//checkUser
	
}//class
