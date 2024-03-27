package kr.smhrd.controller;



import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Menus;
//import kr.smhrd.entity.Stores;
import kr.smhrd.mapper.MenusMapper;
//import kr.smhrd.mapper.StoresMapper_LMT;

@Controller
public class StoresController_LMT {

//	@Autowired
//	private StoresMapper_LMT storesMapper;
	@Autowired
	private MenusMapper menusMapper;
	
	@RequestMapping("/goStores")
	public String goStores(HttpSession session) {
		
		// 음식 list 가져오기
		List<Menus> food_menus_list = menusMapper.foodMenusList();
		session.setAttribute("food_menus_list", food_menus_list);
		
		// 간식 list 가져오기
		List<Menus> snack_menus_list = menusMapper.snackMenusList();
		session.setAttribute("snack_menus_list", snack_menus_list);
		
		// 음료 list 가져오기
		List<Menus> beverage_menus_list = menusMapper.beverageMenusList();
		session.setAttribute("beverage_menus_list", beverage_menus_list);
		
		return "Stores";
	}
	

	
}
