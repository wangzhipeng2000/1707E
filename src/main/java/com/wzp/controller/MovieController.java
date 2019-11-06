package com.wzp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzp.domain.Movie;
import com.wzp.service.MovieService;

@Controller
public class MovieController {
	@Autowired
	private MovieService movieService;
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1")Integer pageNum, Movie movie,Model model) {
		PageInfo<Movie> page =  movieService.list(movie,pageNum);
		model.addAttribute("movie", movie);
		model.addAttribute("page", page);
		return "list";
	}
}
