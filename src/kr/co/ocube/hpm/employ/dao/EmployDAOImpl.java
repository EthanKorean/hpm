package kr.co.ocube.hpm.employ.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployDAOImpl implements EmployDAO {
	@Autowired
	private SqlSessionTemplate sst;
}//class
