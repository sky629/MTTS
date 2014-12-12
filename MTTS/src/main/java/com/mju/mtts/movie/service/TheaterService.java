package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.Theater;

public interface TheaterService {
	List<Theater> getTheaterAll(String movieSeq);
	
	Theater getTheaterInfo(String theaterSeq);

}
