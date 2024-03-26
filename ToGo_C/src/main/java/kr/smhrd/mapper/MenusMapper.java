package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Menus;

@Mapper
public interface MenusMapper {

	List<Menus> menusList();
	
	

}
