package org.pfp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info")
public class InfoController {
	
	@GetMapping("/releaseList")
	public String getReleaseList() throws Exception {
		return "info/releaseList";
	}
}
