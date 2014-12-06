package com.mju.mtts.dao.movie;

import java.util.ArrayList;

import com.mju.mtts.vo.movie.Staff;

public interface StaffDao {
	ArrayList<Staff> getMovieActor(Staff param);
	ArrayList<Staff> getMovieDirector(Staff pram);
}
