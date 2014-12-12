package com.mju.mtts.movie.service;


import com.mju.mtts.vo.movie.Screen;

public interface ScreenService {
	Screen getScreenInfo(String theaterSeq, String screenSeq);
}
