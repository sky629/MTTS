
package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.MovieTimeDao;
import com.mju.mtts.movie.service.MovieTimeService;
import com.mju.mtts.vo.movie.MovieTime;

@Service("MovieTimeService")
public class MovieTimeServiceImpl implements MovieTimeService {
	
	@Autowired
	private MovieTimeDao movieTimeDao;

	@Override
	public List<MovieTime> getMovieTimeAll(String theaterSeq, String movieSeq, String showDate) {
		// TODO Auto-generated method stub
		return movieTimeDao.selectTimeAll(theaterSeq, movieSeq, showDate);
	}

	@Override
	public List<MovieTime> getMovieScreenAll(String theaterSeq,
			String movieSeq, String showDate) {
		// TODO Auto-generated method stub
		return movieTimeDao.selectScreenAll(theaterSeq, movieSeq, showDate);
	}

}
