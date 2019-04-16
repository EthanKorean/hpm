package kr.co.ocube.hpm.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.user.dao.UserDAO;
import kr.co.ocube.hpm.user.domain.AuthSuccessDomain;
import kr.co.ocube.hpm.user.vo.UserAuthVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO udao;

	public AuthSuccessDomain identifyUser(UserAuthVO auvo) {
		AuthSuccessDomain asd = udao.selectAuthUser(auvo);
		return asd;
	}//identifyUser
	
}//class
