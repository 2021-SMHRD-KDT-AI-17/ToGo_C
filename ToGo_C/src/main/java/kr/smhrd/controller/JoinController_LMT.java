package kr.smhrd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Members;

@Controller
public class JoinController_LMT {

	
	@RequestMapping("/membersInsert")
	public String membersInsert(Members members) {
//		membersMapper.membersInsert(members);
		
		return "Join_LMT";
	}
	
}
