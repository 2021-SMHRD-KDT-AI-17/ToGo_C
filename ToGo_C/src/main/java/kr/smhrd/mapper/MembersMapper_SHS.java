package kr.smhrd.mapper;

import kr.smhrd.entity.Members;

public interface MembersMapper_SHS {

	

	public Members memberslogin(Members member);

	public void memberUpdate(Members member);

	public void deleteMember(Members member);

}
