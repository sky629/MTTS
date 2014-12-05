package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.ShowMovieDao;
import com.mju.mtts.movie.service.ShowMovieService;
import com.mju.mtts.vo.movie.ShowMovie;

@Service("ShowMovieService")
public class ShowMovieServiceImpl implements ShowMovieService {
	
	@Autowired
	private ShowMovieDao showMovieDao;

	@Override
	public List<ShowMovie> getShowMovieAll() {
		return showMovieDao.showMovieAll();
	}

}
