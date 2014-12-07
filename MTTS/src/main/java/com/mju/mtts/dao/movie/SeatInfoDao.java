package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.SeatInfo;

public interface SeatInfoDao {
	List<SeatInfo> selectAll();
}
