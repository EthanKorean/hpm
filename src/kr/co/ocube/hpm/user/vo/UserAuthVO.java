package kr.co.ocube.hpm.user.vo;

/**
 * 로그인 및 사용자 인증시 저장될 객체
 * 
 * @author 김대현 연구원
 */
public class UserAuthVO {
	
	/**
	 * email : 사용자 이메일
	 * userPw : 사용자 비밀번호 
 	 * @author 김대현 연구원
	 */
	private String email, userPw;

	public UserAuthVO() {
	}

	public UserAuthVO(String email, String userPw) {
		super();
		this.email = email;
		this.userPw = userPw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	
}// class
