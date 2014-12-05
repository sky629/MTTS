package com.mju.mtts.movie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mju.mtts.movie.service.ShowMovieService;

@Controller
public class ShowMoviesController {
	
	@Autowired
	private ShowMovieService showMovieService;
	
	@RequestMapping("/reserv/index")
	public String index(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap model){
		
		model.addAttribute("showMovie", showMovieService.getShowMovieAll());
		
		return "reserv/index";
	}

}
