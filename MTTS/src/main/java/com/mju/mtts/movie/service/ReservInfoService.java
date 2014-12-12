package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.ReservInfo;

public interface ReservInfoService {
	
	List<ReservInfo> getReservInfo(String memberSeq);
}
