package kr.smhrd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper_LMT;

@Controller
public class JoinController_LMT {

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private MembersMapper_LMT membersMapper;
	
	@RequestMapping("/membersInsert")
	public String membersInsert(Members members) {
		membersMapper.membersInsert(members);
		
		return "main";
	}
	
}
