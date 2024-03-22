package kr.smhrd.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.smhrd.entity.Members;





@Controller
public class MemberController_GHC {
	
	@RequestMapping("/membersSelect")
	public String membersSelect(Members member, HttpSession session) {
		
		//System.out.println(member.toString());
//		Members loginMember = memberMapper.membersSelect(member); //로그인 성공했을때
//		session.setAttribute("loginMember", loginMember);
		// 로그인한 사람의 메세지 가져오기
		
		return "Login_GHC";
	}
}
