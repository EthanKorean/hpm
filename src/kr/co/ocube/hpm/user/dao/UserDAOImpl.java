package kr.co.ocube.hpm.user.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ocube.hpm.user.domain.AuthSuccessDomain;
import kr.co.ocube.hpm.user.vo.UserAuthVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public AuthSuccessDomain selectAuthUser(UserAuthVO auvo) throws PersistenceException {
		return sst.selectOne("authUser",auvo);
	}//selectAuthUser
	

}//class
