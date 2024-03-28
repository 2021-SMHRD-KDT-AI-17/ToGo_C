package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class Conveniences {


	private int conv_idx;		// 편의시설 식별자
	private int service_idx;	// 휴게소 식별자
	private String conv_name;	// 편의시설 명
}
