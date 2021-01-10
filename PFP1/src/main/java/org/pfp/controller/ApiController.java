package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.pfp.dto.DealVO;
import org.pfp.service.DealService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/api")
public class ApiController {
	
	@Inject
	private DealService d_service;
	
	private static final Logger logger = LoggerFactory.getLogger(ApiController.class);
	
	Gson gson = new Gson();
	
	@ResponseBody
	@RequestMapping(value = "/listDeal", produces = "application/json", method = RequestMethod.GET)
	public String getDeal() throws Exception {
		List<DealVO> list = d_service.listDeal();
		String json = gson.toJson(list);
		
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/dealCountPrice", produces = "application/json", method = RequestMethod.GET)
	public String getDealCountPrice() throws Exception {
		List<DealVO> list = d_service.dealCountPrice();
		String json = gson.toJson(list);
		
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/buyBid", produces = "application/json", method = RequestMethod.GET)
	public String getBuyBid() throws Exception {
		List<DealVO> list = d_service.buyBid();
		String json = gson.toJson(list);
		
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/salesBid", produces = "application/json", method = RequestMethod.GET)
	public String getSalesBid() throws Exception {
		List<DealVO> list = d_service.salesBid();
		String json = gson.toJson(list);
		
		return json;
	}
}
