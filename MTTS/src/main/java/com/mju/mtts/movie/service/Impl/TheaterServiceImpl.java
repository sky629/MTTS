package com.mju.mtts.movie.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.TheaterDao;
import com.mju.mtts.movie.service.TheaterService;
import com.mju.mtts.vo.movie.Theater;

@Service("TheaterService")
public class TheaterServiceImpl implements TheaterService {
	
	@Autowired
	private TheaterDao theaterDao;

	@Override
	public List<Theater> getTheaterAll(String theaterSeq) {
		// TODO Auto-generated method stub
		
		return theaterDao.selectAll(theaterSeq);
	}

}
