package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.entity.Members;
import kr.smhrd.entity.Menus;
import kr.smhrd.mapper.MembersMapper;
//import kr.smhrd.mapper.MembersMapper_LMT;
import kr.smhrd.mapper.MenusMapper;


//@org.springframework.web.bind.annotation.RestController
@RestController
public class RestController_LMT {

	@Autowired
	private MembersMapper membersMapper;
	
	@Autowired
	private MenusMapper menusMapper;

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
	
	@RequestMapping("/menuOption")
	public String goMenus(@RequestParam("count") int count, HttpSession session) {

		// 음식 list 가져오기
		Menus food_menus = menusMapper.foodMenus(count);
		System.out.println(food_menus.toString());
		session.setAttribute("food_menus", food_menus);

		// 간식 list 가져오기
		Menus snack_menus = menusMapper.snackMenus(count);
		session.setAttribute("snack_menus", snack_menus);

		// 음료 list 가져오기
		
		Menus beverage_menus = menusMapper.beverageMenus(count);
		session.setAttribute("beverage_menus", beverage_menus);

		return "Stores_HCM";
	}
	
	
	
	
	
	
}
