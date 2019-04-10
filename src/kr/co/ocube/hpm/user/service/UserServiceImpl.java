package kr.co.ocube.hpm.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO udao;
	
}//class
