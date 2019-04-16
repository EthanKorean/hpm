package kr.co.ocube.hpm.employ.domain;

/**
 * 직원 리스트에서 직원선택시 출력될 인적사항
 * @author 김대현 연구원
 */
public class EmpPersonalInfoDomain {
	
	/**
	 * empName : 직원명
	 * empEmail : 이메일
	 * empOrg : 소속명
	 * birthday:생일
	 * addr:주소
	 * graduationSchool : 졸업학교
	 * graduationDate : 졸업날짜 
	 * major : 전공 
	 * degree : 학위
	 * graduationStdTitle : 졸업기준 직급 
	 * graduationStdLvl : 졸업기준 등급
	 */
	private String empName,empEmail,empOrg,birthday,addr;
	private String graduationSchool,graduationDate,major,degree;
	private String graduationStdTitle,graduationStdLvl;
	public EmpPersonalInfoDomain(String birthday, String addr, String graduationSchool, String graduationDate,
			String major, String degree, String graduationStdTitle, String graduationStdLvl) {
		super();
		this.birthday = birthday;
		this.addr = addr;
		this.graduationSchool = graduationSchool;
		this.graduationDate = graduationDate;
		this.major = major;
		this.degree = degree;
		this.graduationStdTitle = graduationStdTitle;
		this.graduationStdLvl = graduationStdLvl;
	}


}//class
