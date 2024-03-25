package kr.smhrd.controller;

//import java.text.DateFormat;
//import java.util.Date;
//import java.util.Locale;

import javax.servlet.http.HttpSession;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper_LMT;

@Controller
public class JoinController_LMT {

	@Autowired
	private MembersMapper_LMT membersMapper;
	
	
	@RequestMapping("/goJoin")
	public String goJoin() {
		return "Join";
	}
	
	
	// 회원가입 + Id 중복확인
	@RequestMapping("/membersInsert")
	public String membersInsert(Members members, HttpSession session) {
		membersMapper.membersInsert(members);
		Members joined_member = membersMapper.membersSelect(members);
		session.setAttribute("join_member", joined_member);
		
		System.out.println(joined_member.toString());
		return "JoinSuccess";
	}
	
	// 로그아웃
	@RequestMapping("/membersLogout")
	public String membersLogout(HttpSession session) {
		session.removeAttribute("loginMember");
		//session.invalidate();
		return "index";
	}
	
}
