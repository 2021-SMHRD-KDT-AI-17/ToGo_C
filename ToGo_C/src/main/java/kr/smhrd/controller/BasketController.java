package kr.smhrd.controller;

//import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import kr.smhrd.entity.Menus;

@Controller
public class BasketController {
	

	
	@RequestMapping("/goBasket")
	public String goSearchMap() {				
		return "ShopBasket";
	}
	
	// 장바구니 전체 비우기
	@RequestMapping("/basketAllDelete")
	public String basketAllDelete(HttpSession session) {
		session.removeAttribute("b_list");	
		
		return "ShopBasket";
	}
}
