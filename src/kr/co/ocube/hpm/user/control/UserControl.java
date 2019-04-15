package kr.co.ocube.hpm.user.control;

import static kr.co.ocube.hpm.util.SessionManagement.initURI;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	/**
	 * user : 사용자 관련 비지니스 로직 객체
	 * @author 김대현 연구원
	 */
	@Autowired
	UserService user;
	
	/**
	 * home화면 조회
	 * @param session
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 * @author 김대현 연구원
	 */
	@RequestMapping(value="/index.do",method= {POST,GET})
	public String doIndex(HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
		String uri =initURI(session,"user/home");
		return uri;
	}//doIndex
	
		
	/**
	 * 개인정보 수정
	 * @param user_pw
	 * @param request
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 * @author 김대현 연구원
	 */
	@RequestMapping(value="/personal_info.do",method= {GET,POST})
	public String doPersonalInfoCheck(String userPw,HttpServletRequest request,HttpServletResponse response) throws NoSuchAlgorithmException, InvalidKeySpecException {
		HttpSession session= request.getSession();
		Boolean flag= (Boolean)session.getAttribute(SessionManagement.AUTH_FLAG_AFTER_LOGIN);
		String method= request.getMethod();
		String uri = initURI(session,"user/personal_pwchk");
		//Post방식인 경우 검증
		if("POST".equals(method)&& !flag){
			PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");
			userPw=HashAlgorithm.decryptRSA(privateKey, userPw);
			String userEmail=(String)session.getAttribute(SessionManagement.USER_EMAIL_KEY);
			UserAuthVO auvo=new UserAuthVO();
			auvo.setUserEmail(userEmail);
			auvo.setUserPw(HashAlgorithm.changeMD5(userPw));
			//계정검사
			if(user.identifyUser(auvo)) {
				//유효한 계정일 경우
				uri=initURI(session,"user/personal_info");
				session.setAttribute(SessionManagement.AUTH_FLAG_AFTER_LOGIN,true);
				SessionManagement.finshedAuth(session);
				return uri;
            }else {
            	//무효한 계정일 경우
            	request.setAttribute("msg", "계정을 다시확인해주세요");
            }//end else
		}else {
			HashAlgorithm.encryptRSA(session);
		}//end else
		session.setAttribute(SessionManagement.AUTH_FLAG_AFTER_LOGIN,false);
		return uri;
	}//doPersonalInfo
	
    /**
     * 로그인페이지 사용자인증
     * @param auvo
     * @param session
     * @return
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeySpecException
     * @author 김대현 연구원
     */
    @RequestMapping(value = "/login.do", method = POST)
    @ResponseBody
	public String doLogin(UserAuthVO auvo,HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
    	JSONObject json = new JSONObject();
        String userEmail	= auvo.getUserEmail();
        String userPw		= auvo.getUserPw();
        // 로그인 전에 세션에 저장했던 개인키를 getAttribute
        PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");
        if (privateKey == null) {
        	// 개인키(아이디)가 들어오지 않은 경우
            json.put("state", false);
        } else {
        	// 개인키(아이디)가 들어온 경우
            try {
                // 암호화 처리된 사용자 계정을 복호화 처리
                String email = HashAlgorithm.decryptRSA(privateKey, userEmail);
                String pw = HashAlgorithm.decryptRSA(privateKey, userPw);
                auvo.setUserEmail(email);
                auvo.setUserPw(HashAlgorithm.changeMD5(pw));
                if(user.identifyUser(auvo)) {
                	json.put("state", true);
                	session.setAttribute(SessionManagement.USER_EMAIL_KEY, auvo.getUserEmail());
                	session.setAttribute(SessionManagement.USER_NAME_KEY, "김대현");
                	session.setAttribute(SessionManagement.AUTH_FLAG_AFTER_LOGIN, false);
                	SessionManagement.finshedAuth(session);
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
    
    /**
     * 좌측 네비게이션 메뉴
     * @return
     * @author 김대현 연구원
     */
    @RequestMapping(value="/menu.do",method= {GET,POST})
    public String doMenu() {
    	return "common/menu";
    }//doMenu
    
    /**
     * Front 업무,  header화면
     * @return
     * @author 김대현 연구원
     */
    @RequestMapping(value="/header.do",method= {GET,POST})
    public String doHeader() {
    	return "common/header";
    }//doMenu
    
    
    /**
     * Logout 프로세스
     * @param session
     * @return
     * @author 김대현 연구원
     */
    @RequestMapping(value="/logout.do",method= {GET,POST})
	public String doLogout(HttpSession session) {
    	session.setAttribute(SessionManagement.USER_EMAIL_KEY, null);
    	return "redirect:http://localhost:8080/hpm/index.do";
	}//logout
    
}//class
