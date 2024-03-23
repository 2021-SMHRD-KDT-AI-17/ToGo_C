package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper_LMT;

@Controller
public class JoinController_LMT {

	@Autowired
	private MembersMapper_LMT membersMapper;
	
	
	@RequestMapping("/goJoin")
	public String goJoin() {
		return "Join_LMT";
	}
	
	
	
	@RequestMapping("/membersInsert")
	public String membersInsert(Members members) {
		membersMapper.membersInsert(members);
		System.out.println(members.toString());
		return "JoinSuccess_LMT";
	}
	
}
