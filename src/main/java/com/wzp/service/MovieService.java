package com.wzp.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.wzp.domain.Movie;

public interface MovieService {

	PageInfo<Movie> list(Movie movie, Integer pageNum);

}
