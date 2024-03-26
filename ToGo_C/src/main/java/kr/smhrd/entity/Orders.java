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
public class Orders {

	private int order_idx;	
	private String mb_id;	
	private String ordered_at;
	private int order_total_amount;
	private String order_status;
	private String store_id;
	
}
