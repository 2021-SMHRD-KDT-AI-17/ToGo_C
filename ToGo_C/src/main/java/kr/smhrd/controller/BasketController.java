package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Menus;
import kr.smhrd.mapper.BasketMapper;

@Controller
public class BasketController {
	
	@Autowired
	private BasketMapper basketMapper;
	
	@RequestMapping("/goBasket")
	public String goSearchMap() {				
		return "ShopBasket_HCM";
	}
	
	// 장바구니 전체 비우기
	@RequestMapping("/basketAllDelete")
	public String basketAllDelete(HttpSession session) {
//		session.removeAttribute("food_menus_list");
//		session.removeAttribute("snack_menus_list");
//		session.removeAttribute("beverage_menus_list");
		session.removeAttribute("b_list");
		
		
		return "ShopBasket_HCM";
	}
}
