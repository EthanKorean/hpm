package kr.co.ocube.hpm.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;

import javax.crypto.Cipher;

public class HashAlgorithm {
	private HashAlgorithm(){}//HashAlgorithm
	
	public static String decryptRSA(PrivateKey privateKey,String securedValue) {
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
        }//end catch
        return decryptedValue;
	}//decryptRSA
	
	// 16진 문자열을 byte 배열로 변환
    private static byte[] hexToByteArray(String hex) {
        if (hex == null || hex.length() % 2 != 0) {
            return new byte[] {};
        }//end if
        byte[] bytes = new byte[hex.length() / 2];
        for (int i = 0; i < hex.length(); i += 2) {
            byte value = (byte) Integer.parseInt(hex.substring(i, i + 2), 16);
            bytes[(int) Math.floor(i / 2)] = value;
        }//end for
        return bytes;
    }//hexToByteArray
	
	public static String changeMD5(String plainText) {
		StringBuilder cipherText = new StringBuilder();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte[] b = md.digest();
			for(int i=0; i<b.length; i++) {
				cipherText.append(Integer.toString((b[i]&0xFF)+0x100,16).substring(1));
			}//end for
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}//end catch
		return cipherText.toString();
	}//change
	
	public static String changeSHA512(String plainText) {
		StringBuilder cipherText = new StringBuilder();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			md.update(plainText.getBytes());
			byte[] b = md.digest();
			for(int i=0; i<b.length; i++) {
				cipherText.append(Integer.toString((b[i]&0xFF)+0x100,16).substring(1));
			}//end for
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}//end catch
		return cipherText.toString();
	}//change
	
}//class
