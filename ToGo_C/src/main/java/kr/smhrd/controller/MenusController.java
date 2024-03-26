package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Menus;
import kr.smhrd.mapper.MenusMapper;

@Controller
public class MenusController {
	
	@Autowired
	private MenusMapper menusMapper;
	
	@RequestMapping("/goMenus")
	public String goMenus(HttpSession session) {
		
		List<Menus> menus_list = menusMapper.menusList();
		System.out.println(menus_list);
		
		return "Menus";
	}
	
	@RequestMapping("/menusList")
	public String menusList(HttpSession session) {
		
		List<Menus> menus_list = menusMapper.menusList();
		session.setAttribute("menus_list", menus_list);
		System.out.println(menus_list.toString());
		
		return "Stores";
	}

}
