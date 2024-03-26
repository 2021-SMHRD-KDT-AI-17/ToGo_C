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
public class AreaController {

	@Autowired
	private AreaMapper areamapper;
	
	@RequestMapping("/goSearchMap")
	public String goSearchMap(Model model) {
		
		List<Service_areas> area_list = areamapper.areaList();
		System.out.println(area_list);
		model.addAttribute("area_list", area_list);
		return "SearchMap_HCM";
	}
	
}
