package com.mju.mtts.movie.service;

import java.util.ArrayList;

import com.mju.mtts.vo.movie.Staff;

public interface StaffService {
	ArrayList<Staff> getMovieActor(String movieSeq);
	ArrayList<Staff> getMovieDirector(String movieSeq);
}
