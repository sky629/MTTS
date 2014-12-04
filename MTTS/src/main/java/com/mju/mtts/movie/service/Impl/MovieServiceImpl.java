package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mju.mtts.dao.movie.MovieDao;
import com.mju.mtts.movie.service.MovieService;
import com.mju.mtts.vo.movie.Movie;

@Service("MovieService")
public class MovieServiceImpl implements MovieService {

	
	@Autowired
	private MovieDao movieDao;

	@Override
	public List<Movie> getMovieAll(String movieSeq) {
		Movie param = new Movie();
		param.setMovieSeq(movieSeq);
		return movieDao.selectAll(param);
	}

	@Override
	public Movie getMovie(String movieSeq) {
		Movie movie = new Movie();
		movie.setMovieSeq(movieSeq);
		
		return movieDao.selectAll(movie).get(0);
	}

	@Override
	public Double getGrade(String movieSeq) {
		Double grade;
		grade = movieDao.getGrade(movieSeq);
		System.out.println("LOG : "+grade);
		return grade;
	}

	@Override
	public List<String> getGenre(String movieSeq) {
		// TODO Auto-generated method stub
		List<String> genre;
		genre = movieDao.getGenre(movieSeq);
		return genre;
	}

	@Override
	public List<String> getCountry(String movieSeq) {
		return movieDao.getCountry(movieSeq);
	}
	
	public String getRate(String movieSeq){
		return movieDao.getRate(movieSeq);
	}
}
