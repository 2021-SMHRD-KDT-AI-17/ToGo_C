package kr.smhrd.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class service_areas {

	private String service_idx;
	private String service_name;
	private String service_addr;
	private String lat;
	private String lng;
}
