package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping("service_Select")
	@ResponseBody
	public Service_areas service_Select(@RequestParam("service_idx") int service_idx, HttpSession session) {
		Service_areas select_area = areaMapper.serviceSelect(service_idx);
		session.setAttribute("select_area", select_area);
//		System.out.println("select_area: ");
//		System.out.println(select_area.toString());
//		
		return select_area;
		
	}
	
	
	
}
