package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class BasketList {

	private String store_id;	// 업체 아이디
	private String menu_name;	// 메뉴명
	private int menu_price;		// 메뉴 가격
	private String menu_img;	// 메뉴 이미지
	private String mb_id;
	private int order_cnt;
	private String order_request;	// 요청사항
	private int total;	// 총액
}
