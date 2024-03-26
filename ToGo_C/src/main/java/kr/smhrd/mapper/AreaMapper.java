package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Service_areas;

@Mapper
public interface AreaMapper {

	List<Service_areas> areaList();

	List<Service_areas> getArea();

//	List<Service_areas> areaList();

}
