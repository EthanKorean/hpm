package kr.co.ocube.hpm.user.vo;

public class LoginVO {
	private String userID,userPW;

	public LoginVO() {}
	public LoginVO(String userID, String userPW) {
		this.userID = userID;
		this.userPW = userPW;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	
}//class
