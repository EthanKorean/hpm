package kr.co.ocube.hpm.util;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpSession;


/**
 * 세션관리를 위한 객체
 * @author 김대현 연구원
 */

public class SessionManagement {
	/**
	 * USER_EMAIL_KEY : 사용자 Email Key값
	 * @author 김대현 연구원
	 */
	public final static String USER_EMAIL_KEY	="userEmail";
	/**
	 *	USER_NAME_KEY : 사용자 이름 Key값
	 * @author 김대현 연구원
	 */
	public final static String USER_NAME_KEY	="userName";
	
	/**
	 * AUTH_FLAG_AFTER_LOGIN : 로그인 이후 사용자 인증에 페이지 새로고침을 방지하기 위한 Booltype의 Key값
	 * @author 김대현 연구원
	 */
	public final static String AUTH_FLAG_AFTER_LOGIN	="DupAuthFlag";
	
	private SessionManagement() {};
	/**
	 * @param session	HttpSession 입력<br/>
	 * @param uri		이동할 jsp경로
	 * @return			session에 접속한 사용자의 세션 값에 유효한 값이 없을경우 login페이지 이동;
	 * @author 김대현 연구원
	 */
	public static String initURI(HttpSession session,String uri) {
		String userEmail = (String)session.getAttribute(USER_EMAIL_KEY);
		try {
			if(userEmail==null) {
				HashAlgorithm.encryptRSA(session);
				uri="user/login";
			}//end if
		} catch (NoSuchAlgorithmException e) {
			uri="error/505";
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			uri="error/505";
			e.printStackTrace();
		}//end catch
		return uri;
	}//initURI

	public static void finshedAuth(HttpSession session) {
		session.setAttribute("_RSA_WEB_Key_", null);
		session.setAttribute("RSAModulus", null);
		session.setAttribute("RSAExponent", null);
	}//end
	
	/**
	 * 세션을 가지고 있는 유효한 접속자인지 check 한다.
	 * @param session
	 * @return 유효한경우 true 아닐경우 false;
	 * @author 김대현 연구원
	 */
	public static boolean isInvalidUser(HttpSession session) {
		return session.getAttribute(USER_EMAIL_KEY)==null ? false:true;
	}//isSessionInvalid
}//class
