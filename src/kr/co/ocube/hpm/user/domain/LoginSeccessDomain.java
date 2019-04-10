package kr.co.ocube.hpm.user.domain;

/**
 * 로그인 성공시 세션에 저장될 객체
 * @author 김대현 연구원
 */
public class LoginSeccessDomain {
	
	/**
	 * userId:사용자 식별id
	 * titleId:직급 id
	 * titleLvl:직급 lvl
	 * orgId : 소속조직 id 
	 * manageLvlId : 계정권한
	 * userName : 사용자 이름
	 * titleName: 직급명
	 * orgNameL1 : 최상위 소속
	 * orgNameL2 : 중간 소속
	 * orgNameL3 : 하위 소속
	 * email : 사용자 email
	 * boolean leader : 권한여부;
	 */
	private int userId,titleId,titleLvl,orgId,manageLvlId;
	private String userName,titleName,orgNameL1,orgNameL2,orgNameL3,email;
	private boolean leader;
	
	public LoginSeccessDomain() {
		super();
	}
	
	public LoginSeccessDomain(int userId, int titleId, int titleLvl, int orgId, int manageLvlId, String userName,
			String titleName, String orgNameL1, String orgNameL2, String orgNameL3, String email, boolean leader) {
		super();
		this.userId = userId;
		this.titleId = titleId;
		this.titleLvl = titleLvl;
		this.orgId = orgId;
		this.manageLvlId = manageLvlId;
		this.userName = userName;
		this.titleName = titleName;
		this.orgNameL1 = orgNameL1;
		this.orgNameL2 = orgNameL2;
		this.orgNameL3 = orgNameL3;
		this.email = email;
		this.leader = leader;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getTitleId() {
		return titleId;
	}
	
	public void setTitleId(int titleId) {
		this.titleId = titleId;
	}
	
	public int getTitleLvl() {
		return titleLvl;
	}
	
	public void setTitleLvl(int titleLvl) {
		this.titleLvl = titleLvl;
	}
	
	public int getOrgId() {
		return orgId;
	}
	
	public void setOrgId(int orgId) {
		this.orgId = orgId;
	}
	
	public int getManageLvlId() {
		return manageLvlId;
	}
	
	public void setManageLvlId(int manageLvlId) {
		this.manageLvlId = manageLvlId;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getTitleName() {
		return titleName;
	}
	
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	
	public String getOrgNameL1() {
		return orgNameL1;
	}
	
	public void setOrgNameL1(String orgNameL1) {
		this.orgNameL1 = orgNameL1;
	}
	
	public String getOrgNameL2() {
		return orgNameL2;
	}
	
	public void setOrgNameL2(String orgNameL2) {
		this.orgNameL2 = orgNameL2;
	}
	
	public String getOrgNameL3() {
		return orgNameL3;
	}
	
	public void setOrgNameL3(String orgNameL3) {
		this.orgNameL3 = orgNameL3;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isLeader() {
		return leader;
	}
	public void setLeader(boolean leader) {
		this.leader = leader;
	}
	
	
	
	
}//class
