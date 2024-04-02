package kr.smhrd.controller;

import java.util.List;

//import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.BasketList;

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
	
	
	// 장바구니 개별 비우기
	   @RequestMapping("/basketDelete")
	   public String basketDelete(@RequestParam("itemIndex") int itemIndex, HttpSession session) {
	       List<BasketList> basketItems = (List<BasketList>) session.getAttribute("b_list");
	       if (basketItems != null && itemIndex >= 0 && itemIndex < basketItems.size()) {
	           basketItems.remove(itemIndex); // Remove the item at the specified index
	           session.setAttribute("b_list", basketItems); // Update the session attribute
	       }
	       return "redirect:/goBasket"; // Redirect back to the shopping basket page
	   }

	
}
