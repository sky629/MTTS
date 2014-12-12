package com.mju.mtts.dao.movie;

import java.util.List;

import com.mju.mtts.vo.movie.Theater;

public interface TheaterDao {
	List<Theater> selectAll(String movieSeq);
	
	Theater selectTheater(Theater param);
}
