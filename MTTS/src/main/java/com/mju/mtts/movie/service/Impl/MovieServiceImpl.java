package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mju.mtts.dao.admin.AdminInfoDao;
import com.mju.mtts.movie.service.MovieService;
import com.mju.mtts.vo.admin.AdminInfo;

@Service("MovieService")
public class MovieServiceImpl implements MovieService {

	
	@Autowired
	private AdminInfoDao adminInfoDao;

	@Override
	public List<AdminInfo> getAdminAll(String seq) {
		AdminInfo param = new AdminInfo();
		param.setSeq(seq);

		return adminInfoDao.selectAll(param);
	}


}
