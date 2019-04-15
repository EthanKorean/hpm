package kr.co.ocube.hpm.config.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.config.dao.ConfigDAO;

@Service
public class ConfigServiceImpl implements ConfigService {
	@Autowired
	ConfigDAO cdao;
}//class
