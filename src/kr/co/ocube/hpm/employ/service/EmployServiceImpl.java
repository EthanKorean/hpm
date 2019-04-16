package kr.co.ocube.hpm.employ.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.employ.dao.EmployDAO;

@Service
public class EmployServiceImpl implements EmployService {
	@Inject
	EmployDAO edao;
}//class
