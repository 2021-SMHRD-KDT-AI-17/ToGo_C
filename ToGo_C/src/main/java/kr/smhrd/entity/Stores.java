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
public class Stores {

	private String store_id;	// 업체 아이디
	private String store_pw;	// 업체 비밀번호
	private String store_cate;	// 카테고리
	private String store_bno;	// 사업자 번호
	private String joined_at;	// 가입 일자
	private int service_idx;	// 휴게소 식별자
	private String store_leave;	// 폐업 유무

}
