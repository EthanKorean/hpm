package kr.co.ocube.hpm.util;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpSession;

import kr.co.ocube.hpm.user.control.UserControl;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;


/**
 * 세션관리를 위한 객체
 * @author 김대현 연구원
 */
public class SessionManagement {
	/**
	 * USER_EMAIL_KEY : 사용자 Email Key값
	 * @author 김대현 연구원
	 */
	public final static String USER_EMAIL_KEY="userEmail";
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
			uri = userEmail==null? moveLogin(session) : uri;
		} catch (NoSuchAlgorithmException e) {
			uri="error/505";
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			uri="error/505";
			e.printStackTrace();
		}//end catch
		return uri;
	}//initURI

	private static String moveLogin(HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
        generator.initialize(1024);
        KeyPair keyPair = generator.genKeyPair();
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PublicKey publicKey = keyPair.getPublic();
        PrivateKey privateKey = keyPair.getPrivate();
        // RSA 개인키
        session.setAttribute("_RSA_WEB_Key_", privateKey);
        RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
        String publicKeyModulus = publicSpec.getModulus().toString(16);
        String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
        // 로그인 폼 hidden setting
        session.setAttribute("RSAModulus", publicKeyModulus);
        // 로그인 폼 hidden setting
        session.setAttribute("RSAExponent", publicKeyExponent);
        return "user/login";
	}//moveLogin
	
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
