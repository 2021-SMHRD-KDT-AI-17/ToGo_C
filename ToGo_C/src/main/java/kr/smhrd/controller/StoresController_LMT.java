package kr.smhrd.controller;



import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Menus;
import kr.smhrd.entity.Stores;
import kr.smhrd.mapper.MenusMapper;
import kr.smhrd.mapper.StoresMapper_LMT;

@Controller
public class StoresController_LMT {

	@Autowired
	private StoresMapper_LMT storesMapper;
	@Autowired
	private MenusMapper menusMapper;
	
	@RequestMapping("/goStores")
	public String goStores(HttpSession session) {
		
		List<Stores> stores_list = storesMapper.storesList();
		//System.out.println(stores_list);
		session.setAttribute("stores_list", stores_list);
		
		List<Menus> menus_list = menusMapper.menusList();
		session.setAttribute("menus_list", menus_list);
		//System.out.println(menus_list.toString());
		return "Stores";
	}
	

	
}
