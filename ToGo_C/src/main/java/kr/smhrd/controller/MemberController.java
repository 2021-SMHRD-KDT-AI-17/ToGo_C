package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Members;
import kr.smhrd.mapper.MembersMapper;

@Controller
public class MemberController {

   @Autowired
   private MembersMapper membersMapper;

   // ------------------------------------------ 회원 가입
   // 회원가입 화면으로 이동
   @RequestMapping("/goJoin")
   public String goJoin() {
      return "Join";
   }

   // 회원가입 + Id 중복확인
   @RequestMapping("/membersInsert")
   public String membersInsert(Members members, HttpSession session) {
      membersMapper.membersInsert(members);
      Members joined_member = membersMapper.membersSelect(members);
      session.setAttribute("join_member", joined_member);

      System.out.println(joined_member.toString());
      return "JoinSuccess";
   }

   // ---------------------------------------- 로그인
   // 로그인 화면으로 이동
   @RequestMapping("/goLogin")
   public String goLogin() {

      return "Login";
   }

   // 아이디 비번 입력후 있는지 확인
   @RequestMapping("/membersLogin")
   public String memberslogin(Members member, HttpSession session) {

      // System.out.println(member.toString());
//         Members loginMember = memberMapper.membersSelect(member); //로그인 성공했을때
//         
      // 로그인한 사람의 메세지 가져오기

      Members loginMember = membersMapper.membersLogin(member);

      // System.out.println(loginMember);
      if ((loginMember != null) && loginMember.getMb_leave().equals("N")) {
         session.setAttribute("loginMember", loginMember);
         return "index"; // 로그인 성공 -> main
      } else {
         return "Login"; // 로그인 실패시 -> 다시 로그인(alert 다시로그인 해주세요 띄울 수 있으면 띄우기)

      }
   }

   // ---------------------------------- 회원정보 수정
   // 회원정보 수정하는 페이지로 이동 /showUpdate
   @RequestMapping("/showUpdate")
   public String showUpdate() {
      return "UpdateMember_HCM";
   }

   // 회원정보 수정
   @RequestMapping("/memberUpdate")
   public String memberUpdate(Members member, HttpSession session) {
      membersMapper.memberUpdate(member);
      Members loginMember = membersMapper.membersLogin(member);
      session.setAttribute("loginMember", loginMember);
      return "index";
   }

   // ------------------------------------- 회원 탈퇴
   // 메인 or 탈퇴 쪽 페이지로 가는 메서드
   @RequestMapping("/deletePage")
   public String deletePage() {
      return "deleteMember_GHC";
   }

   // 회원탈퇴 -> update로 mb_leave= Y 값 바꾸기!!(getAtttribute사용!)
   @RequestMapping("/memberDelete")
   public String deleteMember(HttpSession session) {
      Members loginMember = (Members) session.getAttribute("loginMember");
      // System.out.println(loginMember.toString());
      membersMapper.memberDelete(loginMember);

      session.invalidate();

      return "index";

   }

   // 회원탈퇴 -> 아니요 클릭시
//   @RequestMapping("/goIndex")
//   public String goMain() {
//      
//      return "index";
//   }

   // ------------------------------------------ 로그아웃
   // 로그아웃
   @RequestMapping("/membersLogout")
   public String membersLogout(HttpSession session) {
      session.removeAttribute("loginMember");
      // session.invalidate();
      return "index";
   }
}