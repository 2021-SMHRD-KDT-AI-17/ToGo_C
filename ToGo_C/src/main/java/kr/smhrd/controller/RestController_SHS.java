package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import kr.smhrd.entity.Service_areas;
import kr.smhrd.mapper.AreaMapper;

@RestController
public class RestController_SHS {

	@Autowired
	private AreaMapper areaMapper;
	
	@RequestMapping("/getArea")
	public String getArea() {
		System.out.println("왔다");
		 // getMemberEmail로 접근시 Mapper를 통해서 Member Email 정보를 전부 가져온다.
		List<Service_areas> service_List = areaMapper.getArea();

		// Gson 사용시 key 값은 필드값을 자동으로 치환해준다.
		Gson gson = new Gson();
		return gson.toJson(service_List).toString();

	}
	
	
	
	
}
