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
public class Gas_stations {


	private int gas_idx;
	private int service_idx;
	private int gasoline_price;
	private int diesel_price;
	private int lpg_price;
	private int ev_price;
	
	
	
}
