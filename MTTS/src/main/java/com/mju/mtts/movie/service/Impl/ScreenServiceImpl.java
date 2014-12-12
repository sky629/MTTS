package com.mju.mtts.movie.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mju.mtts.dao.movie.ScreenDao;
import com.mju.mtts.movie.service.ScreenService;
import com.mju.mtts.vo.movie.Screen;

@Service("ScreenService")
public class ScreenServiceImpl implements ScreenService{

	@Autowired
	private ScreenDao screenDao;
	
	@Override
	public Screen getScreenInfo(String theaterSeq, String screenSeq) {
		// TODO Auto-generated method stub
		Screen param = new Screen();
		param.setTheaterSeq(theaterSeq);
		param.setScreenSeq(screenSeq);
		
		return screenDao.selectScreen(param);
	}

}
