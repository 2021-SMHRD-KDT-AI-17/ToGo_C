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
public class Members {


	private String mb_id;
	private String mb_pw;
	private String mb_nick;
	private String mb_phone;
	private String joined_at;
	private String mb_leave;
	
	
	
	
}
