package kr.co.ocube.hpm.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashAlgorithm {

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
