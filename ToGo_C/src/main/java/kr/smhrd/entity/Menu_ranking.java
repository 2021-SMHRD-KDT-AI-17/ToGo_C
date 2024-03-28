package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class Menu_ranking {

	private int rnk_idx;	// 랭킹 식별자
	private int menu_idx;	// 메뉴 식별자
	private int rnk;		// 랭킹
	
	
}
