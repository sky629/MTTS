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

	@Override
	public boolean setReservInfo(String theater, String screen,
			String movie, String reservNum, String reservSeat, String showDate, String memberSeq) {
		ReservInfo param = new ReservInfo();
		param.setTheater(theater);
		param.setScreen(screen);
		param.setMovie(movie);
		param.setReservNum(reservNum);
		param.setSeatNumber(reservSeat);
		param.setShowDate(showDate);
		param.setMemberSeq(memberSeq);
		
		int flag = reservInfoDao.insertReservInfo(param);
		
		return flag >0 ? true : false;
	}

}
