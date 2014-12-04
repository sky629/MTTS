package com.mju.mtts.movie.controller;

import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import org.springframework.web.bind.annotation.RequestParam;

import com.mju.mtts.movie.service.MovieService;
import com.mju.mtts.vo.movie.Movie;

/**
 * Handles requests for the application home page.
 */


@Controller
public class MovieController {

	private static final Logger logger = LoggerFactory
			.getLogger(MovieController.class);

	@Autowired
	private MovieService movieService;

	
	@RequestMapping("/")
	public String MovieHome(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm,
			@RequestParam(value = "movieSeq", required = false) String movieSeq,
			@RequestParam(value = "sortCode", required = false) String sortCode,
			@RequestParam(value = "searchCode", required = false) String searchCode,
			@RequestParam(value = "keyword", required = false) String keyword) {

		logger.info("MovieHome");

		if ("ALL".equals(searchCode)) {
			searchCode = null;
		}
		
		System.out.println(sortCode);
		System.out.println(searchCode);
		System.out.println(keyword);
		
		
		
		mm.addAttribute("movieInfo", movieService.getMovieAll(movieSeq, sortCode));
		
		return "movie/home";

	}
	@RequestMapping("/movie")
	public String MovieDetail(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm,
			@RequestParam(value = "movieSeq", required = false) String movieSeq) {

		logger.info("MovieHome");
		
		mm.addAttribute("movieDetail", movieService.getMovieAll(movieSeq, null).get(0));
		mm.addAttribute("grade", movieService.getGrade(movieSeq));
		mm.addAttribute("country",movieService.getCountry(movieSeq));
		mm.addAttribute("rate", movieService.getRate(movieSeq));
		mm.addAttribute("genre", movieService.getGenre(movieSeq));
		return "movie/movieDetail";

	}



}
