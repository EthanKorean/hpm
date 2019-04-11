package kr.co.ocube.hpm.user.control;

import static kr.co.ocube.hpm.util.SessionManagement.initURI;
import static kr.co.ocube.hpm.util.SessionManagement.isInvalidUser;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ocube.hpm.user.service.UserService;
import kr.co.ocube.hpm.user.vo.UserAuthVO;
import kr.co.ocube.hpm.util.HashAlgorithm;
import kr.co.ocube.hpm.util.SessionManagement;
@Controller
public class UserControl {
	
	@Autowired
	UserService user;
	
	@RequestMapping(value="/index.do",method= {POST,GET})
	public String doIndex(HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
		String uri =initURI(session,"user/home");
		if(isInvalidUser(session)){
			
		}//end if
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
	
	// 로그인 체크
    @RequestMapping(value = "/login.do", method = POST)
    @ResponseBody
	public String doLogin(UserAuthVO auvo,HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
    	System.out.println("hi!");
    	JSONObject json = new JSONObject();
        String useraId = auvo.getEmail();
        String useraPw = auvo.getUserPw();
        // 로그인 전에 세션에 저장했던 개인키를 getAttribute
        PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");
        if (privateKey == null) {
        	// 개인키(아이디)가 들어오지 않은 경우
            json.put("state", false);
        } else {
        	// 개인키(아이디)가 들어온 경우
            try {
                // 암호화 처리된 사용자 계정을 복호화 처리
            	System.out.println("확인 ====>"+useraId+","+useraPw);
                String email = HashAlgorithm.decryptRSA(privateKey, useraId);
                String pw = HashAlgorithm.decryptRSA(privateKey, useraPw);
                auvo.setEmail(email);
                auvo.setUserPw(HashAlgorithm.changeMD5(pw));
                if(user.identifyUser(auvo)) {
                	json.put("state", true);
                	session.setAttribute(SessionManagement.USER_EMAIL_KEY, auvo.getEmail());
                }else {
                	json.put("state", false);
                }//end else
            } catch (Exception e) {
                json.put("state", false);
                e.printStackTrace();
            }//end catch
        }//end else
        return json.toString();
	}//doLogin
    
    	
	
	@RequestMapping(value="/404error.do",method= {GET})
	public String testError() {
		return "error/404";
	}//doLogin
	
}//class
