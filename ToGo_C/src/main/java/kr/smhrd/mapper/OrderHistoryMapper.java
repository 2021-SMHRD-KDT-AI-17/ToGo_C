package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.OrderHistory;


@Mapper
public interface OrderHistoryMapper {


	List<OrderHistory> orderhistory(@Param("mb_id") String mb_id);

}
