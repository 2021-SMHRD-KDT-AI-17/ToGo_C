package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class OrderHistory {

	private String menu_name;
	private int order_cnt;
	private int order_total_amount;
	private String ordered_at;
	private String mb_id;
	
}
