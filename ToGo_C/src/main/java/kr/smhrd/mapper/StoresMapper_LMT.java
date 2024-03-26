package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Stores;

@Mapper
public interface StoresMapper_LMT {

	List<Stores> storesList();

}
