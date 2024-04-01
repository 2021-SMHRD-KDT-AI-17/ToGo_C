package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Orders;
import kr.smhrd.mapper.OrderListMapper;

@Controller
public class OrderHistoryController {

	@Autowired
	private OrderListMapper orderListMapper;
	
	@RequestMapping("/goOrderList")
	public String goOrderList(HttpSession session) {
		List<Orders> order_list = orderListMapper.orderList();
		session.setAttribute("order_list", order_list);

		return "OrderList";
	}
	
}
