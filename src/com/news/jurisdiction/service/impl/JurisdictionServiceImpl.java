package com.news.jurisdiction.service.impl;

import com.news.jurisdiction.dao.JurisdictionDao;
import com.news.jurisdiction.service.JurisdictionService;

public class JurisdictionServiceImpl implements JurisdictionService {
	private JurisdictionDao jurisdictionDao;

	public JurisdictionDao getJurisdictionDao() {
		return jurisdictionDao;
	}

	public void setJurisdictionDao(JurisdictionDao jurisdictionDao) {
		this.jurisdictionDao = jurisdictionDao;
	}

}
