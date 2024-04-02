package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.BasketList;
import kr.smhrd.entity.Members;
import kr.smhrd.entity.Order_details;
import kr.smhrd.entity.Orders;
import kr.smhrd.mapper.MembersMapper;
import kr.smhrd.mapper.OrderListMapper;

@Controller
public class OrderListController {

	@Autowired
	private OrderListMapper orderListMapper;
	@Autowired
	private MembersMapper membersMapper;
	
	@RequestMapping("/goOrderList")
	public String goOrderList(@RequestParam("phone_noValue") String phone_noValue, @RequestParam("t") int t,HttpSession session) {

		Members loginMember = (Members) session.getAttribute("loginMember");
		Orders order = new Orders();

		if(loginMember != null) {
//			// 로그인이 되어 있음
			order.setMb_id(loginMember.getMb_id());
		}else{
			loginMember = new Members();
			// 로그인이 안되어 있음	
			loginMember.setMb_id(phone_noValue);
			loginMember.setMb_nick("no"+phone_noValue);
			loginMember.setMb_phone(phone_noValue);
			loginMember.setMb_pw("123");
			System.out.println(loginMember.toString());
			
			// 회원 만들기 
			membersMapper.membersInsert(loginMember);
			
			// order 넣기 	
			order.setMb_id(phone_noValue);
		}
		
		order.setOrder_total_amount(t); // 주문 총 가격
		order.setOrder_status("준비중"); // 주문 상태
		order.setStore_id("admin"); // 업체 아이디
		order.setPick_up_time(5); // 픽업 시간

		System.out.println(order.toString());
		//order 만들기
		orderListMapper.orderInsert(order);
		Orders order_idx = orderListMapper.orderSelect(loginMember.getMb_id());
		session.setAttribute("order_idx", order_idx);
		
		List<BasketList> b_list = (List<BasketList>) session.getAttribute("b_list");
		
		for(int i = 0; i<b_list.size();i++) {
			Order_details od = new Order_details();
			//INSERT INTO order_details (menu_idx, order_cnt, order_request, order_idx, menu_good) VALUES (1, 1, 'order_request 1', 1, 'N');
			od.setMenu_idx(b_list.get(i).getMenu_idx());
			od.setOrder_cnt(b_list.get(i).getOrder_cnt());
			od.setOrder_request(b_list.get(i).getOrder_request());
			od.setOrder_idx(order_idx.getOrder_idx());
			
			orderListMapper.insertOrderDetail(od);
		}
		
		List<Order_details> od_list = orderListMapper.selectOrderDetail(order_idx.getOrder_idx());
		session.setAttribute("od_list", od_list);
		System.out.println(od_list.toString());

		
//		List<Orders> order_list = orderListMapper.orderList();
//		session.setAttribute("order_list", order_list);

		return "PaymentCom";
	}
}



