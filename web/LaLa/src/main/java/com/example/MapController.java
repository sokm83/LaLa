package com.example;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	
	@Value("${map.apikey}") 
	private String apikey;
		
	@RequestMapping("/map")
    public ModelAndView doit(Model model) {
		Map<String,Object> map = new HashMap<>();
		map.put("apikey", this.apikey);
		return new ModelAndView("map","data", map);
    }
}
