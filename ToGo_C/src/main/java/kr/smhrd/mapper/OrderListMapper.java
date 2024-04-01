package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Order_details;
import kr.smhrd.entity.Orders;

@Mapper
public interface OrderListMapper {

	void orderInsert(Orders order);

	Orders orderSelect(String mb_id);

	void insertOrderDetail(Order_details od);

	List<Order_details> selectOrderDetail(int order_idx);

}
