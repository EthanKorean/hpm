package kr.co.ocube.hpm.user.vo;

/**
 * 경력사항 수정시 사용될 VO
 * @author 김대현 연구원
 */
public class UpdateCareerVO {

	/**
	 * careerId : 경력식별
	 * compnayName: 회사명
	 * hiredate:입사일
	 * retirementDate:퇴사일
	 */
	private int careearId;
	private String companyName,hireDate,retirementDate;
	
	
	
	public UpdateCareerVO() {
		super();
	}



	public UpdateCareerVO(int careearId, String companyName, String hireDate, String retirementDate) {
		super();
		this.careearId = careearId;
		this.companyName = companyName;
		this.hireDate = hireDate;
		this.retirementDate = retirementDate;
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
	
	
	
}//class
