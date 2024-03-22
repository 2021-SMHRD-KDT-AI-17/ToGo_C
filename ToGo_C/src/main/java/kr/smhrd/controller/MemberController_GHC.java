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

		return "Login_GHC";
	}
	
	// 아이디 비번 입력후 있는지 확인 
	@RequestMapping("/memberslogin")
	public String memberslogin(Members member, HttpSession session) {
		
		//System.out.println(member.toString());
//		Members loginMember = memberMapper.membersSelect(member); //로그인 성공했을때
//		session.setAttribute("loginMember", loginMember);
		// 로그인한 사람의 메세지 가져오기
		
		Members loginMember = memberMapper.memberslogin(member);
		
		if (loginMember != null) {
			return "main";
		}else {
			return "Join_LMT";
			
		}
	}
}
