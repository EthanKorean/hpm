package kr.co.ocube.hpm.user.vo;

import kr.co.ocube.hpm.util.SkillLevelEnum;

/**
 * 개인정보수정에서 보유기술 업데이트시 사용할 VO
 * @author 김대현 연구원
 */
public class UpdateUserSkillVO {
	/**
	 * @author 김대현 연구원
	 */
	private int skill_detail_id,userId;
	private SkillLevelEnum level;
	
	public int getSkill_detail_id() {
		return skill_detail_id;
	}
	public void setSkill_detail_id(int skill_detail_id) {
		this.skill_detail_id = skill_detail_id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public SkillLevelEnum getLevel() {
		return level;
	}
	public void setLevel(SkillLevelEnum level) {
		this.level = level;
	}
	
	
	
}//class
