package kr.smhrd.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper_SHS;




@Controller
public class MemberController_GHC {
	
	@Autowired
	private MembersMapper_SHS memberMapper;
	
	// 로그인 화면으로 이동
	@RequestMapping("/goLogin")
	public String goLogin() {

		return "Login";
	}
	
	// 아이디 비번 입력후 있는지 확인 
	@RequestMapping("/memberslogin")
	public String memberslogin(Members member, HttpSession session) {
		
		//System.out.println(member.toString());
//		Members loginMember = memberMapper.membersSelect(member); //로그인 성공했을때
//		
		// 로그인한 사람의 메세지 가져오기
		
		Members loginMember = memberMapper.memberslogin(member);
		session.setAttribute("loginMember", loginMember);
		//System.out.println(loginMember);
		if ((loginMember != null) && loginMember.getMb_leave().equals("0")) {
			return "loginSuccess";			//로그인 성공 -> main
		}else {
			return "Login";		//로그인 실패시 -> 다시 로그인(alert 다시로그인 해주세요 띄울 수 있으면 띄우기)
			
		}
	}
	
	// 회원정보 수정하는 페이지로 이동 /showUpdate
		@RequestMapping("/showUpdate")
		public String showUpdate() {
			return "updateMember_GHC";
		}
	// 회원정보 수정
		@RequestMapping("/memberUpdate")
		public String memberUpdate(Members member, HttpSession session) {
			memberMapper.memberUpdate(member);
			session.setAttribute("loginMember",member);
			return "main";
		}
	
		// 메인 or 탈퇴 쪽 페이지로 가는 메서드
		@RequestMapping("/deletePage")
		public String deletePage(){
			return "deleteMember_GHC";
		}
	
		//회원탈퇴 -> update로 mb_leave=1 값 바꾸기!!(getAtttribute사용!)
		@RequestMapping("/deleteMember")
		public String deleteMember( HttpSession session) {
			Members loginMember = (Members) session.getAttribute("loginMember");
		//	System.out.println(loginMember.toString());
			memberMapper.deleteMember(loginMember);
			
			session.invalidate();
			
			
			return "main";
			
		}
		
		//회원탈퇴 말고 원래 화면으로 돌아가기 //의문점 login으로 다시가면 로그인 회원가입이된다.?-> session값이 있으면 로그인이 되면 안되게 해야함!!!
		@RequestMapping("/goMain")
		public String goMain() {
			
			return "loginSuccess";
		}
		
		//임시 **** 지도 맵 구현하기!!
		@RequestMapping("/orderMap")
		public String orderMap() {
			
			return "SearchMap";
		}
}
