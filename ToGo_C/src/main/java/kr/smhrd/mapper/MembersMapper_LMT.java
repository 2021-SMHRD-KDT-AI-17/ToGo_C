package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.Members;

@Mapper
public interface MembersMapper_LMT {

	public void membersInsert(Members members);

	@Select("select * from members where mb_id = #{mb_id}")
	public Members IdCheck(String inputId);
	

}
