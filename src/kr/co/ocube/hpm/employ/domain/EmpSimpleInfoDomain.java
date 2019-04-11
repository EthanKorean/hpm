package kr.co.ocube.hpm.employ.domain;

/**
 * 직원들 리스트를 보여줄때 간단한 정보를 담을 객체<br/>
 * @author 김대현 연구원
 */
public class EmpSimpleInfoDomain {
	/**
	 * email : 이메일
	 * empName : 직원명
	 * titleName : 직책명
	 * orgName : 소속명
	 * @author 김대현 연구원
	 */
	private String email,empName,titleName,orgName;
	
	public EmpSimpleInfoDomain() {
		super();
	}

	public EmpSimpleInfoDomain(String email, String empName, String titleName, String orgName) {
		super();
		this.email = email;
		this.empName = empName;
		this.titleName = titleName;
		this.orgName = orgName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getTitleName() {
		return titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	
}//class
