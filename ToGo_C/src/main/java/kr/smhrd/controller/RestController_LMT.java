package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper;
//import kr.smhrd.mapper.MembersMapper_LMT;


//@org.springframework.web.bind.annotation.RestController
@RestController
public class RestController_LMT {

	@Autowired
	private MembersMapper membersMapper;

	 // Id 중복체크
	@RequestMapping("/IdCheck")
	public int IdCheck(@RequestParam("inputId") String inputId) {
		Members members = membersMapper.IdCheck(inputId);
		//System.out.println(members.toString());
		if (members == null) {
			// 사용가능
			return 1;
		} else {
			// 사용불가능
			return 0;
		}
	}
	
}
