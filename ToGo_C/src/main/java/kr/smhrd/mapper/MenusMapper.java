package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Menus;

@Mapper
public interface MenusMapper {

	List<Menus> menusList();

	List<Menus> foodMenusList(int i);

	List<Menus> snackMenusList(int i);

	List<Menus> beverageMenusList(int i);

	Menus foodMenus(int count);

	Menus snackMenus(int count);

	Menus beverageMenus(int count);
	
	

}
