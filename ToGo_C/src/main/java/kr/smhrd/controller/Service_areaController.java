package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	private AreaMapper areaMapper;
	
	@RequestMapping("/goSearchMap")
	public String goSearchMap(Model model) {

		return "SearchMap";
	}
	
	@RequestMapping("/getSearchServiceArea")
	public String getSearchServiceArea(Service_areas area, HttpSession session) {
		
		List<Service_areas> Search_service_area_list = areaMapper.getSearchServiceArea(area);
		session.setAttribute("Search_service_area_list", Search_service_area_list);
		System.out.println(Search_service_area_list.toString());
		
		return "SearchMap";
	}
	
	
	
	
}
