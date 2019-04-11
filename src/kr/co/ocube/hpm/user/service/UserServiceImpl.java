package kr.co.ocube.hpm.user.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.user.dao.UserDAO;
import kr.co.ocube.hpm.user.vo.UserAuthVO;
import kr.co.ocube.hpm.util.HashAlgorithm;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO udao;

	public boolean identifyUser(UserAuthVO auvo) {
		boolean auth=false;
		if("test".equals(auvo.getEmail())&&HashAlgorithm.changeMD5("1234").equals(auvo.getUserPw())) {
			auth=true;
		}//end if
		return auth;
	}//identifyUser
	
}//class
