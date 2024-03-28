package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// @Data - 만능

@Data
@Getter
@Setter
@ToString
public class Festivals {


	private int fes_idx;		// 축제 식별자
	private String fes_name;	// 축제 명
	private String fes_area;	// 축제 지역
	private String fes_addr;	// 축제 상세 주소
	private String fes_st_dt;	// 축제 시작일
	private String fes_ed_dt;	// 축제 종료일
	private String fes_link;	// 축제 링크
	private String fes_img;		// 축제 이미지
	
	
	
}
