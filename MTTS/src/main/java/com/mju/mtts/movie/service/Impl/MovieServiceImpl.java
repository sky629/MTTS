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


}
