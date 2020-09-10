package com.peach.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/BusinessLicense/*")
public class BusinessLicenseController {

	@RequestMapping(value = "/B_Registration", method = RequestMethod.GET)
 	public void B_Registration() throws Exception {}
}