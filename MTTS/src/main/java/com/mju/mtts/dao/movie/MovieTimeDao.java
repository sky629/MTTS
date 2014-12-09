
package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.MovieTime;

public interface MovieTimeDao {
	
	List<MovieTime> selectScreenAll(String theaterSeq, String movieSeq, String showDate);
	List<MovieTime> selectTimeAll(String theaterSeq, String movieSeq, String showDate);
}