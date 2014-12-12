package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.ReservInfoDao;
import com.mju.mtts.movie.service.ReservInfoService;
import com.mju.mtts.vo.movie.ReservInfo;

@Service("ReservInfoService")
public class ReservInfoServiceImpl implements ReservInfoService{

	@Autowired
	private ReservInfoDao reservInfoDao;
	
	@Override
	public List<ReservInfo> getReservInfo(String memberSeq) {
		
		return reservInfoDao.selectReservInfo(memberSeq);
	}

}
