package kr.co.ocube.hpm.user.vo;

/**
 * 경력사항을 DB에 insert 사용될 객체
 * @author 김대현 연구원
 */
public class InsertCareerVO {
	
	/**
	 * companyName : 회사명
	 * hireDate : 입사일
	 * retirmentDate : 퇴사일
	 * email : 사용자 Email 
	 * @author 김대현 연구원
	 */
	private String companyName,hireDate,retirementDate,email;

	public InsertCareerVO() {
		super();
	}

	public InsertCareerVO(String companyName, String hireDate, String retirementDate, String email) {
		super();
		this.companyName = companyName;
		this.hireDate = hireDate;
		this.retirementDate = retirementDate;
		this.email = email;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getHireDate() {
		return hireDate;
	}

	public void setHireDate(String hireDate) {
		this.hireDate = hireDate;
	}

	public String getRetirementDate() {
		return retirementDate;
	}

	public void setRetirementDate(String retirementDate) {
		this.retirementDate = retirementDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}//class
