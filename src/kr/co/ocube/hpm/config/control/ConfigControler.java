package kr.co.ocube.hpm.config.control;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ocube.hpm.config.service.ConfigService;

@Controller
public class ConfigControler {

	@Inject
	ConfigService config;
	
	@RequestMapping(value="/config/group.do",method= {GET})
	public String doConfigTech(HttpSession session) {
		String uri ="/config/group";//checkLogined("home",session);
		return uri;
	}//doSettingTech
	
	@RequestMapping(value="/config/tech.do",method= {GET})
	public String doConfigGroup(HttpSession session) {
		String uri ="/config/tech";//checkLogined("home",session);
		return uri;
	}//doSettingTech
	
}//class
