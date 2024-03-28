package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Conveniences;

@Mapper
public interface ConveniencesMapper {

	List<Conveniences> convSelect(int service_idx);

}
