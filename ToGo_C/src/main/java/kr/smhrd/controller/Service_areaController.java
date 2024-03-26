package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.Service_areas;
import kr.smhrd.mapper.AreaMapper;



@Controller
public class Service_areaController {

	@Autowired
	private AreaMapper areamapper;
	
	@RequestMapping("/goSearchMap")
	public String goSearchMap(Model model) {

		return "SearchMap";
	}
	
	@RequestMapping("/getSearchServiceArea")
	public String getSearchServiceArea() {
		System.out.println("service");
		return "index";
	}
	
	
	
	
}
