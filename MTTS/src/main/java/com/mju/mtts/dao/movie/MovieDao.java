package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.Movie;

public interface MovieDao {
	
	List<Movie> selectAll(Movie param);
}
