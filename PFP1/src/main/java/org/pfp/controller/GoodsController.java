package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.pfp.dto.DealVO;
import org.pfp.dto.GoodsVO;
import org.pfp.service.DealService;
import org.pfp.service.GoodsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {
   
   private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
   
   @Inject
   private GoodsService g_service;
   @Inject
   private DealService d_service;
   
   @GetMapping("/detail")
   public String getDetail(@RequestParam int m, Model model) throws Exception {
	  GoodsVO detail = g_service.detail(m);
	  GoodsVO goods = new GoodsVO();
	  goods.setModelNum(m);
	  List<DealVO> list = d_service.listDeal(goods);
	  if(list.size() > 0) {
		  int latestPrice = list.get(0).getBuyPrice();
		  model.addAttribute("latestPrice", latestPrice+"원");
		  if(list.size() > 1) {
			  int changePrice = list.get(1).getBuyPrice() - list.get(0).getBuyPrice();
			  model.addAttribute("changePrice", changePrice+"원");
		  }
	  }
	  List<GoodsVO> priceBySize = g_service.priceBySize(goods);
	  
	  for (int i=0; i<priceBySize.size(); i++) {
		  model.addAttribute(Integer.toString(priceBySize.get(i).getSize()), priceBySize.get(i).getSaleBid());
	  }
	  
	  model.addAttribute("detail", detail);
      return "goods/detail";
   }
}