package com.wzp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzp.dao.MovieDao;
import com.wzp.domain.Movie;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private MovieDao movieDao;

	@Override
	public PageInfo<Movie> list(Movie movie,Integer pageNum) {
		PageHelper.startPage(pageNum, 3);
		List<Movie> list = movieDao.list(movie);
		return new PageInfo<Movie>(list);
	}
}
