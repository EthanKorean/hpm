package kr.co.ocube.hpm.user.vo;

/**
 * 개인정보수정 화면에서 보유스킬 저장시
 * Server에게 저장 요청을할 VO
 * @author 김대현 연구원
 */
public class UserSkillVO {
	

	/**
	 * skillDetailId : 보유기술 식별id
	 * level : 등급
	 * @author 김대현 연구원
	 */
	private String	skillDetailId;
	private int		level;

	public String getSkillDetailId() {
		return skillDetailId;
	}
	public void setSkillDetailId(String skillDetailId) {
		this.skillDetailId = skillDetailId;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}//click
