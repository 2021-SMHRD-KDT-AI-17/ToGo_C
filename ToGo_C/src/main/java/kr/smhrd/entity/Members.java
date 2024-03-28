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


	private String mb_id;		// 회원아이디
	private String mb_pw;		// 회원비밀번호
	private String mb_nick;		// 회원 닉네임
	private String mb_phone;	// 폰 번호
	private String joined_at;	// 가입 날짜
	private String mb_leave;	// 탈퇴 유무
	private int mb_point;		// 포인트
	
	
	
	
}
