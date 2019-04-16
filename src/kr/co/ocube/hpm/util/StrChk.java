package kr.co.ocube.hpm.util;

/**
 * 문자열을 검증하는 객체
 * @author 김대현 연구원
 */
public class StrChk {
	
	
	/**
	 * NOMAL_DATA : null 과 empty가 아닌 값 
	 * @author 김대현 연구원
	 */
	public static int NOMAL_DATA=0;
	
	/**
	 * EMPTY_DATA : empty 값
	 * @author 김대현 연구원
	 */
	public static int EMPTY_DATA=1;
	
	/**
	 * NULL_DATA : null data
	 * @author 김대현 연구원
	 */
	public static int NULL_DATA=2;
	
	private StrChk() {}//StringCheck
	
	/**
	 * null인 객체를 공백문자열로 하는일<br/>
	 * null이 아닌경우 원본을 return
	 * @param data
	 * @return
	 * @author 김대현 연구원
	 */
	public static String changeNulltoEmpty(String data) {
		if(data==null) {
			data="";
		}//end if
		return data;
	}//changeNulltoEmtpy
	
	/**
	 * null 인지 체크하는 bool type method
	 * @param data
	 * @return
	 * @author 김대현 연구원
	 */
	public static boolean isNull(String data) {
		boolean flag=false;
		if(data==null) {
			flag=true;
		}//end if
		return flag;
	}//isNull
	
	/**
	 * 문자열이 null이거나 empty 인지 체크하는일<br/>
	 * 상수를 return 한다.
	 * @param data
	 * @return NOMAL_DATA , EMPTY_DATA, NULL_DATA
	 * @author 김대현 연구원
	 */
	public static int isEmptyOrNull(String data) {
		int returnValue=NOMAL_DATA;
		if(data==null) {
			returnValue=NULL_DATA;
		}else if(data.isEmpty()) {
			returnValue=EMPTY_DATA;
		}//end else
		return returnValue;
	}//end
}//end else
