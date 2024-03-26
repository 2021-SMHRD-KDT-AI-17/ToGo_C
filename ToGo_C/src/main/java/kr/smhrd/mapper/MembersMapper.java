package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.Members;

@Mapper
public interface MembersMapper {

   // 회원가입
   void membersInsert(Members members);

   
   Members membersSelect(Members members);


   Members membersLogin(Members member);


   void memberUpdate(Members member);


   void memberDelete(Members loginMember);

	@Select("select * from members where mb_id = #{mb_id}")
    Members IdCheck(String inputId);

}