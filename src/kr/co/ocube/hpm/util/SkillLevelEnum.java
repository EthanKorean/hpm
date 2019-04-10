package kr.co.ocube.hpm.util;

/**
 * 보유 스킬 레벨에 대한 ENUM 객체	<br/>
 * 0:킬보유x						<br/>
 * 1:하							<br/>
 * 2:중							<br/>
 * 3:상							<br/>
 * @author 김대현 연구원
 */
public enum SkillLevelEnum {
	HIGH(3),MIDDLE(2),ROW(1),NONE(0);
	
	private int value;
	SkillLevelEnum(int value){
		this.value=value;
	}//SkillLevelEnum
	
	public int getValue() {
		return value;
	}//getValue
	
}//enum
