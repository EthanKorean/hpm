package kr.co.ocube.hpm.user.domain;

/**
 * 사용자의 경력을 조회시 보여줄 객체
 * @author 김대현 연구원
 */
public class UserCareerDomain {

	/**
	 * careerId : 경력식별
	 * compnayName : 회사명
	 * hiredate : 입사일
	 * retirementDate : 퇴사일
	 * term : 경력  = 년단위로 정수 1 개월수는 소수점으로 표시
	 */
	private int careearId;
	private String companyName,hireDate,retirementDate;
	private double term;
	
	public UserCareerDomain() {
		super();
	}
	public UserCareerDomain(int careearId, String companyName, String hireDate, String retirementDate, double term) {
		super();
		this.careearId = careearId;
		this.companyName = companyName;
		this.hireDate = hireDate;
		this.retirementDate = retirementDate;
		this.term = term;
	}
	public int getCareearId() {
		return careearId;
	}
	public void setCareearId(int careearId) {
		this.careearId = careearId;
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
	public double getTerm() {
		return term;
	}
	public void setTerm(double term) {
		this.term = term;
	}
	
	
}//class
