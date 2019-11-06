package com.wzp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.wzp.domain.Movie;

public interface MovieDao {
	
	List<Movie> list(Movie movie);

}
