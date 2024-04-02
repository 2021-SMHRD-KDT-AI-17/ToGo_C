package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.OrderHistory;
import kr.smhrd.mapper.MembersMapper;
import kr.smhrd.mapper.OrderHistoryMapper;

@Controller
public class OrderHistoryController {

	@Autowired
	private OrderHistoryMapper orderHistoryMapper;
	
	   @Autowired
	   private MembersMapper membersMapper;
	
	@RequestMapping("/goOrderHistory")
	public String goOrderHistory(HttpSession session, @RequestParam("mb_id") String mb_id) {
		
		System.out.println(mb_id);
		List<OrderHistory> orderhistory_list = orderHistoryMapper.orderhistory(mb_id);
		session.setAttribute("orderhistory_list", orderhistory_list);

		return "OrderHistory";
	}
	
}
