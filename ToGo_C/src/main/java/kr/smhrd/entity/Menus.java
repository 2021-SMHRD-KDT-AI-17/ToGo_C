package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class Menus {

	private String menu_idx;
	private String store_id;
	private String menu_name;
	private String menu_price;
	private String menu_desc;
	private String menu_img;
	private String menu_soldout;
	
}
