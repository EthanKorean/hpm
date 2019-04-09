package kr.co.ocube.hpm.employ.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ocube.hpm.employ.dao.EmployDAO;

@Service
public class EmployServiceImpl implements EmployService {
	@Autowired
	EmployDAO edao;
}//class
