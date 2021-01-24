package org.pfp.controller;

import java.text.DateFormat;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PostMapping;
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
	  String color = detail.getItemGroup().substring(0, (detail.getItemGroup().length()-1));
	  String strColor = "";
	  ArrayList<String> arr = new ArrayList<String>();
	  arr.add(color.substring(0, 1)+"%");
	  for(int i=0;i<color.length();i++) {
		  if(i>0) {
			  strColor += " / ";
		  }
		 switch (color.substring(i, i+1)) {
		case "a":
			strColor += "하얀색";
			break;
		case "b":
			strColor += "빨간색";
			break;
		case "c":
			strColor += "갈색";
			break;
		case "d":
			strColor += "주황색";
			break;
		case "e":
			strColor += "아이보리색";
			break;
		case "f":
			strColor += "살구색";
			break;
		case "g":
			strColor += "황금색";
			break;
		case "h":
			strColor += "노란색";
			break;
		case "i":
			strColor += "황토색";
			break;
		case "j":
			strColor += "녹갈색";
			break;
		case "k":
			strColor += "연두색";
			break;
		case "l":
			strColor += "초록색";
			break;
		case "m":
			strColor += "청록색";
			break;
		case "n":
			strColor += "파란색";
			break;
		case "o":
			strColor += "하늘색";
			break;
		case "p":
			strColor += "남색";
			break;
		case "q":
			strColor += "보라색";
			break;
		case "r":
			strColor += "분홍색";
			break;
		case "s":
			strColor += "민트색";
			break;
		case "t":
			strColor += "회색";
			break;
		case "u":
			strColor += "검정색";
			break;
		case "v":
			strColor += "무지개색";
			break;
		default:
			break;
		}
		 arr.add("%"+color.substring(i, i+1)+"%");
	  }
	  arr.add("%"+detail.getItemGroup().substring(detail.getItemGroup().length()-1));
	  detail.setArrItemGroup(arr);
	  List<GoodsVO> similar = g_service.similarGoods(detail);
	  
	  String[] strName= detail.getItemName().split(" ");
	  arr.clear();
	  arr.add(strName[0]+" %");
	  for(int i=0; i < strName.length; i++) {
		  arr.add("% "+strName[i]+" %");
	  }
	  detail.setArrItemGroup(arr);
	  List<GoodsVO> relative = g_service.relativeGoods(detail);
	  
	  model.addAttribute("detail", detail);
	  model.addAttribute("color", strColor);
	  model.addAttribute("similar", similar);
	  model.addAttribute("relative", relative);
      return "goods/detail";
   }
   
   @GetMapping("/buy")
   public String getBuy(@RequestParam int m, Model model) throws Exception {
	   GoodsVO detail = g_service.detail(m);
	   List<GoodsVO> priceBySize = g_service.priceBySize(detail);
	   List<GoodsVO> salesBySize = g_service.salesBySize(detail);
	   model.addAttribute("detail", detail);
	   model.addAttribute("priceBySize", priceBySize);
	   model.addAttribute("salesBySize", salesBySize);
	   return "goods/buy_sell";
   }
   
   @PostMapping("/buy-confirm")
   public String postBuyConfirm(@RequestParam int modelNum, @RequestParam int size, @RequestParam int buyPrice, @RequestParam String endDate, @RequestParam String buyAddress, @RequestParam String postNum, @RequestParam String deliveryMessage, Model model) throws Exception {
	   GoodsVO detail = g_service.detail(modelNum);
	   model.addAttribute("detail", detail);
	   model.addAttribute("size", size);
	   model.addAttribute("buyPrice", buyPrice);
	   model.addAttribute("endDate", endDate);
	   model.addAttribute("buyAddress", buyAddress);
	   model.addAttribute("postNum", postNum);
	   model.addAttribute("deliveryMessage", deliveryMessage);
	   return "goods/confirm";
   }
}