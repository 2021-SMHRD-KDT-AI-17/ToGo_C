package kr.smhrd.controller;

//import java.util.ArrayList;
//import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import kr.smhrd.entity.BasketList;
//import kr.smhrd.entity.Conveniences;
import kr.smhrd.entity.Menus;
//import kr.smhrd.entity.Service_areas;
import kr.smhrd.mapper.MenusMapper;

@Controller
public class MenusController {

	@Autowired
	private MenusMapper menusMapper;

	@RequestMapping("/goMenus")
	public String goMenus(@RequestParam("count") int count, HttpSession session) {

		// 음식 list 가져오기
		Menus food_menus = menusMapper.foodMenus(count);
		System.out.println(food_menus.toString());
		session.setAttribute("food_menus", food_menus);

		// 간식 list 가져오기
		Menus snack_menus = menusMapper.snackMenus(count);
		session.setAttribute("snack_menus", snack_menus);

		// 음료 list 가져오기
		
		Menus beverage_menus = menusMapper.beverageMenus(count);
		session.setAttribute("beverage_menus", beverage_menus);

		return "Menus";
	}
	
	

	
	
	/*
	 * public Service_areas service_Select(@RequestParam("service_idx") int
	 * service_idx, HttpSession session) { Service_areas select_area =
	 * areaMapper.serviceSelect(service_idx); session.setAttribute("select_area",
	 * select_area);
	 * 
	 * 
	 * List<Conveniences> select_conv_list = convMapper.convSelect(service_idx);
	 * System.out.println(select_conv_list.toString());
	 * 
	 * return select_area;
	 * 
	 * }
	 */
	

}
