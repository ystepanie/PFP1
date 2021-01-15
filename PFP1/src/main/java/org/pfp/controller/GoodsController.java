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
	  String color = Integer.toString((int)(detail.getItemGroup()/10));
	  String strColor = "";
	  for(int i=0;i<(color.length()/2);i++) {
		  if(i>0) {
			  strColor += " / ";
		  }
		 switch (color.substring(2*i, 2*i+2)) {
		case "11":
			strColor += "하얀색";
			break;
		case "12":
			strColor += "빨간색";
			break;
		case "13":
			strColor += "갈색";
			break;
		case "14":
			strColor += "주황색";
			break;
		case "15":
			strColor += "아이보리색";
			break;
		case "16":
			strColor += "살구색";
			break;
		case "17":
			strColor += "황금색";
			break;
		case "18":
			strColor += "노란색";
			break;
		case "19":
			strColor += "황토색";
			break;
		case "20":
			strColor += "녹갈색";
			break;
		case "21":
			strColor += "연두색";
			break;
		case "22":
			strColor += "초록색";
			break;
		case "23":
			strColor += "청록색";
		case "24":
			strColor += "파란색";
		case "25":
			strColor += "하늘색";
		case "26":
			strColor += "남색";
		case "27":
			strColor += "보라색";
		case "28":
			strColor += "분홍색";
		case "29":
			strColor += "민트색";
			break;
		case "30":
			strColor += "회색";
			break;
		case "31":
			strColor += "검정색";
			break;
		case "32":
			strColor += "무지개색";
			break;
		default:
			break;
		}
	  }
	  model.addAttribute("detail", detail);
	  model.addAttribute("color", strColor);
      return "goods/detail";
   }
}