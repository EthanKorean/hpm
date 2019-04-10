package kr.co.ocube.hpm.user.domain;

/**
 * 개인정보수정 화면에서 보여줄 세션에 저장된 값들 외의 값들을 저장한 객체
 * @author 김대현 연구원
 */
public class UserPersonalDataDomain {
	
	/**
	 * birthday:생일
	 * addr:주소
	 * graduationSchool : 졸업학교
	 * graduationDate : 졸업날짜 
	 * major : 전공 
	 * degree : 학위
	 */
	private String birthday,addr;
	private String graduationSchool,graduationDate,major,degree;
	
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