package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.SeatInfo;

public interface SeatInfoService {
	List<SeatInfo> getSeatInfoAll(String showTimeSeq);
	boolean setReservSeat(String showTimeSeq, String reservSeat);
}
