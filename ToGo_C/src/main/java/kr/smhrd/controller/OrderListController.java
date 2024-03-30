package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderListController {

	@RequestMapping("/goOrderList")
	public String goOrderList() {
		
		
		return "OrderList";
	}
}
