package kr.smhrd.controller;



import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper_LMT;
import kr.smhrd.mapper.StoresMapper_LMT;

@Controller
public class StoresController_LMT {

	@Autowired
	private StoresMapper_LMT storesMapper;
	
	
	@RequestMapping("/goStores")
	public String goStores() {
		return "Stores";
	}
	

	
}
