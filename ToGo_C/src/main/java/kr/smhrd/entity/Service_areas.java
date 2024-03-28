package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class Service_areas {

   private int service_idx;		// 휴게소 식별자
   private String service_name;	// 휴게소 명
   private String service_addr;	// 휴게소 주소
   private float lat;			// 위도
   private float lng;			// 경도
   private int gasoline_price;	// 휘발유 가격
   private int diesel_price;	// 경유 가격
   private int lpg_price;		// LPG 가격
}