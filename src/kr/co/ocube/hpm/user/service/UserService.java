package kr.co.ocube.hpm.user.service;

import kr.co.ocube.hpm.user.domain.AuthSuccessDomain;
import kr.co.ocube.hpm.user.vo.UserAuthVO;

public interface UserService {
	public AuthSuccessDomain identifyUser(UserAuthVO auvo);
}//interface
