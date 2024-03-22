package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;


import kr.smhrd.entity.Members;

@Mapper
public interface MemberMapper_GHC {

	public Members membersSelect(Members member);

}
