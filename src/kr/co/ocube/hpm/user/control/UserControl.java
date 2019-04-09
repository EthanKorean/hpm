package kr.co.ocube.hpm.user.control;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Locale;

import javax.annotation.Resource;
import javax.crypto.Cipher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.service.spi.InjectService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ocube.hpm.user.service.UserService;
import kr.co.ocube.hpm.user.vo.LoginVO;
@Controller
public class UserControl {
	
	@Autowired
	UserService user;
	
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
	
	
	
	@RequestMapping(value="/login.do",method= {GET})
	public String doLogin(Locale locale, HttpServletRequest request, HttpServletResponse response, Model model,
            HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
		session = request.getSession();
		 
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
        request.setAttribute("RSAModulus", publicKeyModulus);
        // 로그인 폼 hidden setting
        request.setAttribute("RSAExponent", publicKeyExponent);
		return "user/login";
	}//doLogin
	

	  // 로그인 체크
    @RequestMapping(value = "/loginRSA.do", method = POST)
    @ResponseBody
	public String doCheckLogin(LoginVO lvo,HttpSession session) throws NoSuchAlgorithmException, InvalidKeySpecException {
        System.out.println("hi!");
    	JSONObject json = new JSONObject();
        String useraId = lvo.getUserId();
        String useraPw = lvo.getUserPw();
        // 로그인 전에 세션에 저장했던 개인키를 getAttribute
        PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");
        // 개인키(아이디)가 들어오지 않은 경우
        if (privateKey == null) {
            json.put("state", false);
            // 개인키(아이디)가 들어온 경우
        } else {
            try {
                // 암호화 처리된 사용자 계정을 복호화 처리
            	System.out.println("확인 ====>"+useraId+","+useraPw);
                String id = decryptRsa(privateKey, useraId);
                String pw = decryptRsa(privateKey, useraPw);
                json.put("state", true);
            } catch (Exception e) {
                json.put("state", false);
                e.printStackTrace();
            }//end catch
        }//end else
        return json.toString();
	}//doLogin
    
    
    public String decryptRsa(PrivateKey privateKey, String securedValue) {
        String decryptedValue = "";
        try {
            Cipher cipher = Cipher.getInstance("RSA");
            // 암호화 된 값 : byte 배열
            // 이를 문자열 form으로 전송하기 위해 16진 문자열(hex)로 변경
            // 서버측에서도 값을 받을 때 hex 문자열을 받아 다시 byte 배열로 바꾼 뒤 복호화 과정을 수행
            byte[] encryptedBytes = hexToByteArray(securedValue);
            cipher.init(Cipher.DECRYPT_MODE, privateKey);
            byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
            // 문자 인코딩
            decryptedValue = new String(decryptedBytes, "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return decryptedValue;
    }
 
    // 16진 문자열을 byte 배열로 변환
    public static byte[] hexToByteArray(String hex) {
        if (hex == null || hex.length() % 2 != 0) {
            return new byte[] {};
        }
        byte[] bytes = new byte[hex.length() / 2];
        for (int i = 0; i < hex.length(); i += 2) {
            byte value = (byte) Integer.parseInt(hex.substring(i, i + 2), 16);
            bytes[(int) Math.floor(i / 2)] = value;
        }
        return bytes;
    }


	
	
	@RequestMapping(value="/404error.do",method= {GET})
	public String testError() {
		return "error/404";
	}//doLogin
	
}//class
