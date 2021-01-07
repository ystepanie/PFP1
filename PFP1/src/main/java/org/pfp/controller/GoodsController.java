package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.pfp.dto.GoodsVO;
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
   GoodsService g_service;
   
   @GetMapping("/detail")
   public String getDetail(@RequestParam int m, Model model) throws Exception {
	  GoodsVO detail = g_service.detail(m);
	  model.addAttribute("detail", detail);
      return "goods/detail";
   }
}