package kr.co.ocube.hpm.user.vo;

/**
 * 개인정보수정에서 인적사항을 수정시 저장
 * @author 김대현 연구원
 */
public class UpdatePersonalInfoVO {
	
	/**
	 * birthday:생일
	 * addr:주소
	 * email:이메일
	 * graduationSchool : 졸업학교
	 * graduationDate : 졸업날짜 
	 * major : 전공 
	 * degree : 학위
	 */
	private String birthday,addr,email;
	private String graduationSchool,graduationDate,major,degree;
	
	public UpdatePersonalInfoVO() {
		super();
	}
	
	public UpdatePersonalInfoVO(String birthday, String addr, String email, String graduationSchool,
			String graduationDate, String major, String degree) {
		super();
		this.birthday = birthday;
		this.addr = addr;
		this.email = email;
		this.graduationSchool = graduationSchool;
		this.graduationDate = graduationDate;
		this.major = major;
		this.degree = degree;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGraduationSchool() {
		return graduationSchool;
	}
	public void setGraduationSchool(String graduationSchool) {
		this.graduationSchool = graduationSchool;
	}
	public String getGraduationDate() {
		return graduationDate;
	}
	public void setGraduationDate(String graduationDate) {
		this.graduationDate = graduationDate;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	
	
	
}//class
