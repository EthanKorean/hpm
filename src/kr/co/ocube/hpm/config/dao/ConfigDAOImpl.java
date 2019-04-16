package kr.co.ocube.hpm.config.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ConfigDAOImpl implements ConfigDAO {
	@Autowired
	private SqlSessionTemplate sst;
}//class
