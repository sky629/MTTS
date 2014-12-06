package com.mju.mtts.movie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mju.mtts.movie.service.MovieTimeService;
import com.mju.mtts.movie.service.ShowMovieService;
import com.mju.mtts.movie.service.TheaterService;

@Controller
public class ShowMoviesController {
	
	@Autowired
	private ShowMovieService showMovieService;
	
	@Autowired
	private TheaterService theaterServie;
	
	@Autowired
	private MovieTimeService MovieTimeService;
	
	@RequestMapping("/reserv/reserv.do")
	public String reservHome(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap model,
			@RequestParam(value = "theaterSeq", required = false) String theaterSeq,
			@RequestParam(value = "movieSeq", required = false) String movieSeq
			){
		
		model.addAttribute("showMovie", showMovieService.getShowMovieAll());
		model.addAttribute("theater", theaterServie.getTheaterAll(theaterSeq));
		model.addAttribute("movieTime", MovieTimeService.getMovieTimeAll(theaterSeq, movieSeq));
		
		return "reserv/reserv";
	}
	

}
