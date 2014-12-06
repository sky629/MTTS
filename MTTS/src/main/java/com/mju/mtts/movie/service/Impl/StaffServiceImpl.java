package com.mju.mtts.movie.service.Impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.StaffDao;
import com.mju.mtts.movie.service.StaffService;
import com.mju.mtts.vo.movie.Staff;

@Service("StaffService")
public class StaffServiceImpl implements StaffService{

	@Autowired
	StaffDao staffDao;
	
	@Override
	public ArrayList<Staff> getMovieActor(String movieSeq) {
		ArrayList<Staff> actorList;
		Staff staff = new Staff();
		
		staff.setMovieSeq(movieSeq);
		actorList = staffDao.getMovieActor(staff);
		
		return actorList;
	}

	@Override
	public ArrayList<Staff> getMovieDirector(String movieSeq) {
		ArrayList<Staff> director;
		Staff staff = new Staff();
		staff.setMovieSeq(movieSeq);
		
		director = staffDao.getMovieDirector(staff);
		return director;
	}
}
