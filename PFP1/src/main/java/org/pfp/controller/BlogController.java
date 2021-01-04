package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {
   
   private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
   
   /**
    * Simply selects the home view to render by returning its name.
    */
   @GetMapping("/detail")
   public String getDetail() {
      return "blog/detail";
   }
}