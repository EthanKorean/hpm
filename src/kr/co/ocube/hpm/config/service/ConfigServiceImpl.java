package kr.co.ocube.hpm.config.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.config.dao.ConfigDAO;

@Service
public class ConfigServiceImpl implements ConfigService {
	@Inject
	ConfigDAO cdao;
}//class
