package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.Movie;

public interface MovieDao {
	
	List<Movie> selectAll(Movie param);
	Movie selectDetail(Movie param);
	Double getGrade(String param);
	List<String> getGenre(String param);
	List<String> getCountry(String param);
	String getRate(String param);
}
