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

   private int service_idx;
   private String service_name;
   private String service_addr;
   private int lat;
   private int lng;
}