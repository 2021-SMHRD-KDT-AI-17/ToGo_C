package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.OrderHistory;
import kr.smhrd.mapper.OrderHistoryMapper;

@Controller
public class OrderHistoryController {

	@Autowired
	private OrderHistoryMapper orderHistoryMapper;
	
	@RequestMapping("/goOrderHistory")
	public String goOrderHistory(HttpSession session) {
		
		
		List<OrderHistory> orderhistory_list = orderHistoryMapper.orderhistory();
		session.setAttribute("orderhistory_list", orderhistory_list);

		return "OrderHistory";
	}
	
}
