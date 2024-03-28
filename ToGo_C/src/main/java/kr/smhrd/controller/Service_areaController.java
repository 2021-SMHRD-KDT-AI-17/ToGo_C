package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Conveniences;
import kr.smhrd.entity.Service_areas;
import kr.smhrd.mapper.AreaMapper;
import kr.smhrd.mapper.ConveniencesMapper;



@Controller
public class Service_areaController {

	@Autowired
	private AreaMapper areaMapper;
	@Autowired
	private ConveniencesMapper convMapper;
	
	// 지도 화면으로 이동
	@RequestMapping("/goSearchMap")
	public String goSearchMap(Model model) {

		return "Stores";
	}
	
	// 검색 관련 내용 출력
	@RequestMapping("/getSearchServiceArea")
	public String getSearchServiceArea(Service_areas area, HttpSession session) {
		
		List<Service_areas> Search_service_area_list = areaMapper.getSearchServiceArea(area);
		session.setAttribute("Search_service_area_list", Search_service_area_list);
		System.out.println(Search_service_area_list.toString());
		
		return "SearchMap";
	}
	
	// 검색된 휴게소 선택 시 섹션에 값 저장
	@RequestMapping("service_Select")
	@ResponseBody
	public Service_areas service_Select(@RequestParam("service_idx") int service_idx, HttpSession session) {
		Service_areas select_area = areaMapper.serviceSelect(service_idx);
		session.setAttribute("select_area", select_area);
//		System.out.println("select_area: ");
//		System.out.println(select_area.toString());
		
//		
//		if(select_gas ==null) {
//			session.setAttribute("select_gas", null);
//		}else {
//			session.setAttribute("select_gas", select_gas);
//		}
//		System.out.println(select_gas.toString());
		
//		
//		Conveniences select_conv = convMapper.convSelect(service_idx);
//		System.out.println(select_conv.toString());
		
		return select_area;
		
	}
	
	@RequestMapping("service_Print")
	@ResponseBody
	public String service_Print() {
		
		return  "휴게소";
	}
	
	@RequestMapping("/service_area_Select")
	public String service_area_Select() {
		return "index";
	}
	
	
}
