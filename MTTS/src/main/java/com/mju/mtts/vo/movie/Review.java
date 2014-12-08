package com.mju.mtts.vo.movie;

public class Review {
	private String reviewSeq;
	private String grade;
	private String review;
	private String createDate;
	private String writer;
	private String pwd;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getReviewSeq() {
		return reviewSeq;
	}
	public void setReviewSeq(String reviewSeq) {
		this.reviewSeq = reviewSeq;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
}
