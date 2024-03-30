package kr.smhrd.controller;



import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Menus;
import kr.smhrd.entity.Service_areas;
//import kr.smhrd.entity.Stores;
import kr.smhrd.mapper.MenusMapper;


@Controller
public class StoresController_LMT {


	@Autowired
	private MenusMapper menusMapper;
	
	@RequestMapping("/goStores")
	public String goStores(HttpSession session) {
		
		
		Service_areas store_idx = (Service_areas) session.getAttribute("select_area");
		
		
		// 음식 list 가져오기
		List<Menus> food_menus_list = menusMapper.foodMenusList(store_idx.getService_idx());
		session.setAttribute("food_menus_list", food_menus_list);
		
		// 간식 list 가져오기
		List<Menus> snack_menus_list = menusMapper.snackMenusList(store_idx.getService_idx());
		session.setAttribute("snack_menus_list", snack_menus_list);
		
		// 음료 list 가져오기
		List<Menus> beverage_menus_list = menusMapper.beverageMenusList(store_idx.getService_idx());
		session.setAttribute("beverage_menus_list", beverage_menus_list);
		
		return "Stores_HCM";
	}
	
	@RequestMapping("/exGoStores")
	public String exGoStores(HttpSession session) {
		
		// 음식 list 가져오기
		/*
		 * List<Menus> food_menus_list = menusMapper.foodMenusList();
		 * session.setAttribute("food_menus_list", food_menus_list);
		 * 
		 * // 간식 list 가져오기 List<Menus> snack_menus_list = menusMapper.snackMenusList();
		 * session.setAttribute("snack_menus_list", snack_menus_list);
		 * 
		 * // 음료 list 가져오기 List<Menus> beverage_menus_list =
		 * menusMapper.beverageMenusList(); session.setAttribute("beverage_menus_list",
		 * beverage_menus_list);
		 */
		
		
		return "Stores";
	}
	
}
