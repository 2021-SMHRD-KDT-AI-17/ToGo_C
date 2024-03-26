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


	private int fes_idx;
	private String fes_name;
	private String fes_area;
	private String fes_addr;
	private String fes_st_dt;
	private String fes_ed_dt;
	private String fes_link;
	private String fes_img;
	
	
	
}
