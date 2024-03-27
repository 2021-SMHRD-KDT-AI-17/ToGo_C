package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Gas_stations;

@Mapper
public interface GasMapper {

	Gas_stations gasSelect(int service_idx);

}
