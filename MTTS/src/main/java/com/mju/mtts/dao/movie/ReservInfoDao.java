package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.ReservInfo;

public interface ReservInfoDao {
	
	List<ReservInfo> selectReservInfo(String memberSeq);
	List<ReservInfo> selectReservInfoOne(String memberSeq);
	int insertReservInfo(ReservInfo param);
 
}
