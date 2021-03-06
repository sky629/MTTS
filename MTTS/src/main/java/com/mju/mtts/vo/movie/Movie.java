package com.mju.mtts.vo.movie;

import java.util.List;

public class Movie {
	
	private String movieSeq;
	private String title;
	private String playTime;
	private String synopsis;
	private String produceYear;
	private String openDate;
	private List<Genre> genre;
	private String genreSeq;
	private String rate;
	private List<String> country;
	private Double grade;
	private String sortCode;
	private String searchCode;
	private String keyword;
	private String gradeAvg;
	private String reservCount;
	private List<Staff> actor;
	private List<Staff> director;
	private List<Picture> picture;
	private List<Picture> poster;
	
	
	
	public List<Staff> getActor() {
		return actor;
	}
	public void setActor(List<Staff> actor) {
		this.actor = actor;
	}
	public List<Staff> getDirector() {
		return director;
	}
	public void setDirector(List<Staff> director) {
		this.director = director;
	}
	public String getGradeAvg() {
		return gradeAvg;
	}
	public void setGradeAvg(String gradeAvg) {
		this.gradeAvg = gradeAvg;
	}
	public String getReservCount() {
		return reservCount;
	}
	public void setReservCount(String reservCount) {
		this.reservCount = reservCount;
	}
	public String getSortCode() {
		return sortCode;
	}
	public void setSortCode(String sortCode) {
		this.sortCode = sortCode;
	}
	public String getSearchCode() {
		return searchCode;
	}
	public void setSearchCode(String searchCode) {
		this.searchCode = searchCode;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public List<Genre> getGenre() {
		return genre;
	}
	public void setGenre(List<Genre> genre) {
		this.genre = genre;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public Double getGrade() {
		return grade;
	}
	public void setGrade(Double grade) {
		this.grade = grade;
	}
	public String getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPlayTime() {
		return playTime;
	}
	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public String getProduceYear() {
		return produceYear;
	}
	public void setProduceYear(String produceYear) {
		this.produceYear = produceYear;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public List<String> getCountry() {
		return country;
	}
	public void setCountry(List<String> country) {
		this.country = country;
	}
	public String getGenreSeq() {
		return genreSeq;
	}
	public void setGenreSeq(String genreSeq) {
		this.genreSeq = genreSeq;
	}
	public List<Picture> getPicture() {
		return picture;
	}
	public void setPicture(List<Picture> picture) {
		this.picture = picture;
	}
	public List<Picture> getPoster() {
		return poster;
	}
	public void setPoster(List<Picture> poster) {
		this.poster = poster;
	}
	
	
}
