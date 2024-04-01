package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Orders;
import kr.smhrd.mapper.OrderHistoryMapper;
import kr.smhrd.mapper.OrderListMapper;

@Controller
public class OrderHistoryController {

	@Autowired
	private OrderHistoryMapper orderHistoryMapper;
	
	@RequestMapping("/goOrderHistory")
	public String goOrderHistory(HttpSession session) {
		
		
		List<Orders> orderhistory_list = orderHistoryMapper.orderhistory();
		session.setAttribute("orderhistory_list", orderhistory_list);

		return "OrderHistory";
	}
	
}
