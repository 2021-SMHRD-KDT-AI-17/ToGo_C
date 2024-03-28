package kr.smhrd.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import kr.smhrd.entity.BasketList;
import kr.smhrd.entity.Service_areas;
import kr.smhrd.mapper.AreaMapper;

@RestController
public class RestController_SHS {

	@Autowired
	private AreaMapper areaMapper;
	List<BasketList> b_list = new ArrayList<>();
	
	@RequestMapping("/getArea")
	public String getArea() {
		System.out.println("왔다");
		 // getMemberEmail로 접근시 Mapper를 통해서 Member Email 정보를 전부 가져온다.
		List<Service_areas> service_List = areaMapper.getArea();

		// Gson 사용시 key 값은 필드값을 자동으로 치환해준다.
		Gson gson = new Gson();
		return gson.toJson(service_List).toString();

	}
	
	@RequestMapping("/goShopBasketAdd")
    public String handleBasketAddRequest(@RequestBody BasketList b ,HttpSession session) {
        // data 객체를 사용하여 로직 수행
    	b_list.add(b);
    	session.setAttribute("b_list", b_list);
    	
        return "success";
    }
	
	
	
	
}
