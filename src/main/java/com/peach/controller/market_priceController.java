package com.peach.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/market_price/*")
public class market_priceController {

	@RequestMapping(value = "/market_forecast", method = RequestMethod.GET)
 	public void market_forecast() throws Exception {}
	@RequestMapping(value = "/market_price_trend", method = RequestMethod.GET)
 	public void market_price_trend() throws Exception {}
	@RequestMapping(value = "/purchase", method = RequestMethod.GET)
 	public void purchase() throws Exception {}
	@RequestMapping(value = "/today_market_price", method = RequestMethod.GET)
 	public void today_market_price() throws Exception {}

}