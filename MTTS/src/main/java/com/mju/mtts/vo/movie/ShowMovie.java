package com.mju.mtts.vo.movie;

public class ShowMovie {

	private String movieSeq;
	private String theaterSeq;
	private String screenSeq;
	// Movie 와 join 하여 가져올 정보
	private String title;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}
	public String getTheaterSeq() {
		return theaterSeq;
	}
	public void setTheaterSeq(String theaterSeq) {
		this.theaterSeq = theaterSeq;
	}
	public String getScreenSeq() {
		return screenSeq;
	}
	public void setScreenSeq(String screenSeq) {
		this.screenSeq = screenSeq;
	}
}
