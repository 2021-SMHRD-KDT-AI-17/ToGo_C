package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Orders;


@Mapper
public interface OrderHistoryMapper {


	List<Orders> orderhistory();


}