package kr.co.ocube.hpm.user.dao;

import org.apache.ibatis.exceptions.PersistenceException;

import kr.co.ocube.hpm.user.domain.AuthSuccessDomain;
import kr.co.ocube.hpm.user.vo.UserAuthVO;

public interface UserDAO {
	public AuthSuccessDomain selectAuthUser(UserAuthVO auvo) throws PersistenceException;
}//interface
