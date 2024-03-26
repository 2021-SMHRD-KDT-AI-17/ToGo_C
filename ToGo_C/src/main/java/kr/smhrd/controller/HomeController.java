package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.entity.Service_areas;
import kr.smhrd.entity.Stores;
import kr.smhrd.mapper.AreaMapper;
import kr.smhrd.mapper.StoresMapper_LMT;

//Handler Mapping이 Controller를 찾기위해 @(Annotation)으로 Controller라고 명시해야 함
// servlet-context.xml 파일에 어떤 패키지에서 Controller를 찾을건지 명시
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private StoresMapper_LMT storesMapper;
	
	@Autowired
	private AreaMapper areaMapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		// home -> View name -> controller는 이동하야할 뷰의 경로가 아닌 View name만 돌려줌
		// home.jsp 파일부터 실행해보기 -> WEB-INF : 보안폴더(다이렉트로 접근 불가), 스프링구조를 지켜주기 위함
		//                                    : 무조건 디스패쳐 서블릿을 거쳐서 와야 함
		
		
		List<Service_areas> area_list = areaMapper.areaList();
		System.out.println(area_list);
		session.setAttribute("area_list", area_list);
		
		
		
		// 3.24 이 부분 index.jsp 홈 화면으로 바꿨어요 - 홍창민
		return "index"; // /WEB-INF/views/index.jsp
	}
	
}
