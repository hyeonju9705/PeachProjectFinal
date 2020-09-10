package com.peach.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/intro/*")
public class IntroController {

	@RequestMapping(value = "/intro", method = RequestMethod.GET)
 	public void intro() throws Exception {}
	@RequestMapping(value = "/howToPick", method = RequestMethod.GET)
 	public void introhowToPick() throws Exception {}
	@RequestMapping(value = "/vitamin", method = RequestMethod.GET)
 	public void vitamin() throws Exception {}
}