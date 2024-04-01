package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.BasketList;
import kr.smhrd.entity.Members;
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
		//@RequestParam("phone_noValue") String phone_noValue, @RequestParam("total_price") int total_price, 
//		Members loginMember = (Members) session.getAttribute("loginMember");
//		System.out.println(phone_noValue);
//		System.out.println(total_price);
		System.out.println("넘어오기"  + phone_noValue);
		System.out.println(t);
//		if(loginMember != null) {
//			// 로그인이 되어 있음
//			
//		}else{
//			// 로그인이 안되어 있음	
//			loginMember.setMb_id("no"+phone_noValue);
//			loginMember.setMb_nick("no"+phone_noValue);
//			loginMember.setMb_phone(phone_noValue);
//			loginMember.setMb_pw("123");
//			
//			// 회원 만들기 
//			membersMapper.membersInsert(loginMember);
//			
//			// order 넣기 
//			
//			// 장바구니 내용
//			List<BasketList> b_list = (List<BasketList>) session.getAttribute("b_list");
//			
//			Orders order = new Orders();
//			
//			System.out.println(order.toString());
//			
//			order.setMb_id("no" + phone_noValue);
//			order.setOrder_total_amount(total_price); // 주문 총 가격
//			order.setOrder_status("준비중"); // 주문 상태
//			order.setStore_id("admin"); // 업체 아이디
//			order.setPick_up_time(5); // 픽업 시간
//
//			
//			// 총액S
//			orderListMapper.orderInsert(order);
//			
//			
//		}

		
//		List<Orders> order_list = orderListMapper.orderList();
//		session.setAttribute("order_list", order_list);

		return "PaymentCom";
	}
}
