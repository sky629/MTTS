package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.movie.Movie;
import com.mju.mtts.vo.movie.Genre;

public interface MovieService {
	//모든 영화나 선택한 영화의 정보를 뽑아낸다
	List<Movie> getMovieAll(String movieSeq, String sortCode);
	Movie getMovie(String movieSeq);
	Double getGrade(String movieSeq);
	List<Genre> getGenre(String movieSeq);
	List<String> getCountry(String movieSeq);
	String getRate(String movieSeq);
	
	List<Movie> getGenreMovie(String genreSeq, String sortCode);
}