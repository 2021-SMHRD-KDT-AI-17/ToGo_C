package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Members;

@Mapper
public interface MembersMapper_LMT {

	public void membersInsert(Members members);
}
