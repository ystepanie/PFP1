package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.pfp.dto.CardVO;
import org.pfp.dto.DealVO;
import org.pfp.dto.GoodsVO;
import org.pfp.dto.MemberVO;
import org.pfp.service.DealService;
import org.pfp.service.GoodsService;
import org.pfp.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
   @Inject
   private GoodsService g_service;
   @Inject
   private MemberService m_service;
   
   private static final Logger logger = LoggerFactory.getLogger(ApiController.class);
   
   Gson gson = new Gson();
   
   @ResponseBody
   @RequestMapping(value = "/listDeal", produces = "application/json", method = RequestMethod.GET)
   public String getDeal(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size, @RequestParam(required = false, defaultValue = "all") String p) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      if (!p.equals("all")) {
         goods.setItemContent(p);
      }
      List<DealVO> list = d_service.listDeal(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/dealCountPrice", produces = "application/json", method = RequestMethod.GET)
   public String getDealCountPrice(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size, @RequestParam(required = false, defaultValue = "all") String p) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      if (!p.equals("all")) {
         goods.setItemContent(p);
      }
      List<DealVO> list = d_service.dealCountPrice(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/buyBid", produces = "application/json", method = RequestMethod.GET)
   public String getBuyBid(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      List<DealVO> list = d_service.buyBid(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/salesBid", produces = "application/json", method = RequestMethod.GET)
   public String getSalesBid(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      List<DealVO> list = d_service.salesBid(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/shop", produces = "application/json", method = RequestMethod.GET)
   public String getSalesBid(@RequestParam String s, @RequestParam(required = false) String ps, @RequestParam(required = false) String pe) throws Exception {
      List<GoodsVO> list = null;
      HashMap<String, Integer> range = new HashMap<String, Integer>();
      if(ps != null && pe != null) {
         range.put("start", Integer.parseInt(ps));
         range.put("end", Integer.parseInt(pe));
      }
      switch (s) {
      case "recommendation": list = g_service.listRecommand(range);
         break;
      case "popularity": list = g_service.listPopular(range);
         break;
      case "latest": list = g_service.listLatest(range);
         break;
      case "cheap": list = g_service.listCheap(range);
         break;
      case "expensive": list = g_service.listExpensive(range);
         break;
      default:
         break;
      }
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/priceBySize", produces = "application/json", method = RequestMethod.GET)
   public String getPriceBySize(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      List<GoodsVO> list = g_service.priceBySize(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   @ResponseBody
   @RequestMapping(value = "/salesBySize", produces = "application/json", method = RequestMethod.GET)
   public String getSalesBySize(@RequestParam int modelNum, @RequestParam(required = false, defaultValue = "all") String size) throws Exception {
      GoodsVO goods = new GoodsVO();
      goods.setModelNum(modelNum);
      if (!size.equals("all")) {
         goods.setSize(Integer.parseInt(size));
      }
      List<GoodsVO> list = g_service.salesBySize(goods);
      String json = gson.toJson(list);
      
      return json;
   }
   
   //회원의 주소와 우편번호 수정
   @ResponseBody
   @RequestMapping(value = "/modifyAddress", produces = "application/json", method = RequestMethod.GET)
   public void getModifyAddress(@RequestParam String address, @RequestParam String postNum, HttpSession session) throws Exception {
	   MemberVO member = (MemberVO)session.getAttribute("member");
      if(member != null) {
    	 member.setUserId(member.getUserId());
         logger.info("id : " + member.getUserId());
         logger.info("address : " + address);
         member.setAddress(address);
         member.setPostNum(postNum);
         m_service.memberModify(member);
      }
   }
   
   //카드 추가
   @ResponseBody
   @RequestMapping(value = "/addCard", produces = "application/json", method = RequestMethod.GET)
   public void getAddCard(@RequestParam CardVO card) throws Exception {
	    g_service.addCard(card);
   }
   
}