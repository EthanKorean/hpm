package kr.co.ocube.hpm.user.vo;

/**
 * 클라이언트로부터 추가된 경력사항 저장을 요청할때 사용될 VO
 * @author 김대현 연구원
 */
public class CareerVO {
	/**
	 * companyName : 회사명
	 * hireDate : 입사일
	 * retirmentDate : 퇴사일
	 * @author 김대현 연구원
	 */
	private String companyName,hireDate,retirementDate;

	public CareerVO(String companyName, String hireDate, String retirementDate) {
		super();
		this.companyName = companyName;
		this.hireDate = hireDate;
		this.retirementDate = retirementDate;
	}

	public CareerVO() {
		super();
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
	
}//class
