package com.spring.ec.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

public interface UserController {
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView uask(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView ulike(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listBoards(HttpServletRequest request, HttpServletResponse response)throws Exception;
	
	public ModelAndView listEatBoards(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView listSeeBoards(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView viewboard(@RequestParam("list_num") int list_num, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public ModelAndView loginform(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public ModelAndView boardform(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity addNewBoard(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	
	public ResponseEntity addComment(HttpServletRequest Request, HttpServletResponse response)throws Exception;
	
	public ModelAndView category(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
