package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.Movie;

public interface MovieService {
	List<Movie> getMovieAll(String movieSeq);
}