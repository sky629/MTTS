package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.Movie;

public interface MovieService {
	List<Movie> getMovieAll(String movieSeq);
	Movie getMovie(String movieSeq);
	Double getGrade(String movieSeq);
	List<String> getGenre(String movieSeq);
	List<String> getCountry(String movieSeq);
	String getRate(String movieSeq);
}