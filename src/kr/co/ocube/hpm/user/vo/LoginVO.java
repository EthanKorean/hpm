package kr.co.ocube.hpm.user.vo;

public class LoginVO {
	private String userId,userPw;

	public LoginVO() {}
	public LoginVO(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
}//class
