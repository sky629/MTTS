package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.ReservInfo;

public interface ReservInfoService {

	List<ReservInfo> getReservInfo(String memberSeq);
	
	List<ReservInfo> getReservInfoOne(String memberSeq);

	boolean setReservInfo(String theater, String screen, String movie,
			String reservNum, String reservSeat, String showDate, String memberSeq);
	
}
