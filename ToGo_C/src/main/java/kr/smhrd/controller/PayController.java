package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {

	@RequestMapping("/goPay")
	public String goPay() {
		
		return "Payment_LMT";
	}
}
