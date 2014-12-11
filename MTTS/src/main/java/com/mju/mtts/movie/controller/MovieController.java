package com.mju.mtts.movie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mju.mtts.movie.service.MovieService;
import com.mju.mtts.movie.service.MovieTimeService;

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
		
		mm.addAttribute("movieInfo", movieService.getMovieAll(movieSeq, sortCode));
		
		return "movie/home";

	}
	@RequestMapping("/movie/home.do")
	public String GenreMovie(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm,
			@RequestParam(value = "movieSeq", required = false) String movieSeq,
			@RequestParam(value = "sortCode", required = false) String sortCode,
			@RequestParam(value = "genreSeq", required = false) String genreSeq) {

		logger.info("GenreMovie");

		mm.addAttribute("movieInfo", movieService.getGenreMovie(genreSeq, sortCode));
		
		return "movie/home";
	}
	
	@Autowired
	private MovieTimeService movieTimeService;
	
	@RequestMapping("/movie/movieDetail.do")
	public String MovieDetail(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm,
			@RequestParam(value = "movieSeq", required = false) String movieSeq,
			@RequestParam(value = "navCode", required = false) String navCode,
			@RequestParam(value = "theaterSeq", required = false) String theaterSeq,
			@RequestParam(value = "screenSeq", required = false) String screenSeq,
			@RequestParam(value = "showDate", required = false) String showDate) {

		logger.info("MovieHome");
		
		
		
		mm.addAttribute("movieInfo", movieService.getMovieAll(movieSeq, null).get(0));
	
		if(navCode != null){
			mm.addAttribute("navCode", navCode);
			if(navCode.equals("grade")){
				mm.addAttribute("grade",movieService.getMovieReview(movieSeq));
			}
			else if(navCode.equals("video")){
				mm.addAttribute("video",movieService.getMovieVideo(movieSeq));
			}
			else if(navCode.equals("fameLine")){
				mm.addAttribute("fameLine", movieService.getMovieFameLine(movieSeq));
			}//else if(navCode.equals("timeTable")){
				//mm.addAttribute("movieTime", movieTimeService.getMovieTimeAll(theaterSeq, movieSeq, showDate));
			//} 구현 안됨
		}else{
			mm.addAttribute("navCode","synopsis");
		}
		return "movie/movieDetail";
	}
}
