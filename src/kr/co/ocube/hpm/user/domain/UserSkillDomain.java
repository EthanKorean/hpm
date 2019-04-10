package kr.co.ocube.hpm.user.domain;

import kr.co.ocube.hpm.util.SkillLevelEnum;

/**
 * Home/개인정보수정 화면에서 보여줄 기술에 대한 객체	<br/>
 * @author 김대현 연구원							<br/>
 */
public class UserSkillDomain {
	
	/**
	 * skillId : 기술 카테고리 식별 값		<br/>
	 * skillDetailId : 상세 기술 식별 값	<br/>
	 * skillName : 기술 카테고리 이름		<br/>
	 * skillDetailName :  상세 기술 이름	<br/>
	 * comment : 기술에 대한 comment		<br/>
	 * skillLevel : 보유기술등급			<br/>
	 */
	private int skillId,skillDetailId; 
	private String skillName,skillDetailName,comment;
	private SkillLevelEnum skillLevel;
	
	public UserSkillDomain() {
		super();
	}
	
	public UserSkillDomain(int skillId, int skillDetailId, String skillName, String skillDetailName, String comment,
			SkillLevelEnum skillLevel) {
		super();
		this.skillId = skillId;
		this.skillDetailId = skillDetailId;
		this.skillName = skillName;
		this.skillDetailName = skillDetailName;
		this.comment = comment;
		this.skillLevel = skillLevel;
	}
	public int getSkillId() {
		return skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getSkillDetailId() {
		return skillDetailId;
	}
	public void setSkillDetailId(int skillDetailId) {
		this.skillDetailId = skillDetailId;
	}
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public String getSkillDetailName() {
		return skillDetailName;
	}
	public void setSkillDetailName(String skillDetailName) {
		this.skillDetailName = skillDetailName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public SkillLevelEnum getSkillLevel() {
		return skillLevel;
	}
	public void setSkillLevel(SkillLevelEnum skillLevel) {
		this.skillLevel = skillLevel;
	}
	
}//class
