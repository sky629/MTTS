
package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.MovieTime;

public interface MovieTimeDao {
	
	List<MovieTime> selectAll(String theaterSeq, String movieSeq, String showDate);

}