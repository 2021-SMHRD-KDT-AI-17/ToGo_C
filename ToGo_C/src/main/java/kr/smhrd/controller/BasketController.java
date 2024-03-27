package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BasketController {
	
	@RequestMapping("/goBasket")
	public String goSearchMap() {				
		return "ShopBasket";
	}
}
