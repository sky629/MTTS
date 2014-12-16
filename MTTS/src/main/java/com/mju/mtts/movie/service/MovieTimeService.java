
package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.MovieTime;

public interface MovieTimeService {
	List<MovieTime> getMovieScreenAll(String theaterSeq, String movieSeq, String showDate);
	List<MovieTime> getMovieTimeAll(String theaterSeq, String movieSeq, String showDate);
	MovieTime getMovieTime(String showTimeSeq);
}
