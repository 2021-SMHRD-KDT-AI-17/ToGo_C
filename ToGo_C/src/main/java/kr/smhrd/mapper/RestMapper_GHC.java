package kr.smhrd.mapper;

import org.springframework.stereotype.Controller;

import kr.smhrd.entity.service_areas;

@Controller
public interface RestMapper_GHC {

	public service_areas restSelect(service_areas rest);

}
