package kr.co.ocube.hpm.employ.control;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ocube.hpm.employ.service.EmployService;

@Controller
public class EmployControl {
	@Autowired
	EmployService employ;
	
	@RequestMapping(value="/employ/info.do",method= {GET})
	public String doInquery(HttpSession session) {
		return "employ/employ_info";
	}//doLogin
	
	@RequestMapping(value="/employ/group/info.do",method= {GET})
	public String doGroupInfo(HttpSession session) {
		return "employ/group_info";
	}//doLogin
	
	
}
