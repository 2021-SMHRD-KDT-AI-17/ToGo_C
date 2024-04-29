# 📎 ToGo(팀명: 소떡소떡)
![소떡](https://github.com/2021-SMHRD-KDT-AI-17/ToGo_C/assets/99461952/118acf98-f0e0-477a-8de6-08972b1dceef)

## 👀 서비스 소개
* 서비스명:  소떡소떡
* 서비스설명:  외부 API를 활용한 휴게소 픽업 서비스  
<br>

## 📅 프로젝트 기간
2024.02.29 ~ 2024.04.05 (5주)
<br>

## 제안 배경

### 시장현황
1. 기존 휴게소 푸트 코트 주문 방식의 탈피
2. 코로나 19 이후 국내외 여행객의 증가로 인한 휴게소 이용자 증가
3. 휴게소 픽업 서비스와 관련 기술 미비
4. 휴게소 푸드코드 인당 소비 비용 증가
5. 휴게소의 가치가 넓어짐

### STP
1. 시장 세분화 : 휴게소 이용자
2. 표적 시장
    - 휴게소 푸드 코트 이용자
    - 휴게소 푸드 코트 판매자
3. 포지셔닝: 향후 첨단화 될 휴게소의 드라이브 

### 유사서비스
---
#### 1. 기존방법

- 푸드코트 방문 후 키오스크를 통해 음식 주문
- 전국에 3개의 휴게소에서만 드라이브 스루 운행 중
<br>

#### 2. 스타벅스

##### 장점 

- 원하는 메뉴를 미리 주문하여 대기시간 감소
- 지도에 모든 매장을 보여줌
- 멀리 있는 매장도 검색을 통해 원격으로 주문 가능

##### 단점

- 해당 어플이 없으면 사용하기 어려움
<br>

#### 3. 배달의 민족

##### 장점

- 원하는 메뉴 /  매장을 선택 할 수 있음
- 음식을 받는 방식을 배달/포장으로 선택할 수 있음
- 멀리 있는 매장에서도 주문 가능
- 
##### 단점
- 온라인 주문으로 어플이 없으면 이용이 어려움

### 차별성
---
- 미리 주문을 통해 대기시간 감소
- 멀리 있는 매장에서도 주문 가능
- 가맨점 별 추가/ 수정/ 매진 권한 부여

### 리버스 엔지니어링
---
  
## ⭐ 챌린지 포인트
* 파이어베이스
    - Real-time DataBase를 활용한 실시간 주문 확인
* 다크모드
    - 야간에 운전하는 운전자를 위한 다크모드
* 크롤링
    - 휴게소 위도, 경도, 주유소 가격, 휴게소 별 변의시설 푸드 코트 메뉴 등 데이터 크롤링
* 외부 API
    - 지도 API
    - 결제 API확인
    
<br>

## ⭐ 기능

### 소비자
1. 휴게소 검색
- 휴게소 이름의 일부만 검색하여도 관련된 휴게소 이름을 검색하여 관련 휴게소 리스트를 출력함
2. 휴게소 주유소, 편의시설 안내
- 검색된 휴게소와 관련된 주유소 가격  및 편의시설을 상단에 안내함
3. 푸드코트 메뉴 주문
- 검색된 휴게소에 있는 푸드코트 메뉴를 출력하여 주문할 수 있음
4. 장바구니 기능
- 장바구니 기능을 통해 여러 메뉴를 주문할 수 있음
5. 주문 내역 보기
- 결제가 완료된 주문 내역을 영수증 형태로 보여줌

### 판매자
1. 매출 관리
2. 판매 내역
3. 주문 관리
4. 메뉴 관리
## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white"/>
            <img src="https://img.shields.io/badge/KakaoMap-FFCD00?style=for-the-badge&logo=Kakao&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/RaskpberryPi-A22846?style=for-the-badge&logo=RaskpberryPi&logoColor=white"/>
            <img src="https://img.shields.io/badge/Arduino-00979D?style=for-the-badge&logo=Arduino&logoColor=white"/>
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=Firebase&logoColor=white"/>
            <img src="https://img.shields.io/badge/Oracle 11g-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>


<br>

## ⚙ 시스템 아키텍처(구조) 예시 
![서비스 아키텍처](https://user-images.githubusercontent.com/25995055/169925538-15867bd9-aa0b-42fc-a39b-88981e926e51.png)
<br>

## 📌 SW유스케이스
![image](https://user-images.githubusercontent.com/25995055/178401023-9a015e66-aa6e-4d74-8564-9b1f9d306649.png)
<br>

## 📌 서비스 흐름도
![image](https://user-images.githubusercontent.com/25995055/178401048-d6484bda-a2d7-40e1-998b-2bd195cd9f89.png)
<br>

## 📌 ER다이어그램
![image](https://user-images.githubusercontent.com/25995055/169925318-102784c2-893f-4fd7-bec9-a54c44b669d4.png)
<br>

## 🖥 화면 구성

### 로그인/회원가입/회원괸리/회원수정/회원탈퇴
![image](https://user-images.githubusercontent.com/25995055/178401098-95f15a0e-a2de-415e-83d5-883bb4cb0656.png)
<br>

### 옷 정보/코디 추천(날씨, 팁, 오늘의 코디, 참고할 수 있는 코디)
![image](https://user-images.githubusercontent.com/25995055/178401127-287e6de2-4396-49fc-a107-59c4d5cd55c7.png)
<br>

### 일정/고객센터
![image](https://user-images.githubusercontent.com/25995055/178401150-861f0e93-0f40-4fae-98c1-2099bf513c8d.png)
<br>

## 👨‍👩‍👦‍👦 팀원 역할
<table>
  <tr>
    <td align="center"><img src="https://item.kakaocdn.net/do/fd49574de6581aa2a91d82ff6adb6c0115b3f4e3c2033bfd702a321ec6eda72c" width="100" height="100"/></td>
    <td align="center"><img src="https://mb.ntdtv.kr/assets/uploads/2019/01/Screen-Shot-2019-01-08-at-4.31.55-PM-e1546932545978.png" width="100" height="100"/></td>
    <td align="center"><img src="https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2" width="100" height="100"/></td>
    <td align="center"><img src="https://i.pinimg.com/236x/ed/bb/53/edbb53d4f6dd710431c1140551404af9.jpg" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
  </tr>
  <tr>
    <td align="center"><strong>고희청</strong></td>
    <td align="center"><strong>신혜선</strong></td>
    <td align="center"><strong>홍창민</strong></td>
    <td align="center"><strong>임명택</strong></td>
    <td align="center"><strong>김혜린</strong></td>
  </tr>
  <tr>
    <td align="center"><b>팀장</b></td>
    <td align="center"><b>팀원</b></td>
    <td align="center"><b>팀원</b></td>
    <td align="center"><b>팀원</b></td>
    <td align="center"><b>팀원</b></td>
  </tr>
  <tr>
    <td align="center"><b>DB, Back-End</b></td>
    <td align="center"><b>PM, DB, Back-End</b></td>
    <td align="center"><b>Front-End</b></td>
    <td align="center"><b>Back-End</b></td>
    <td align="center"><b>Front-End</b></td>
  </tr>
  <tr>
    <td>
      - 지도API <br>
      - 로그인  기능, 개인정보 수정<br>
      - 메인페이지에서 편의시설, 주유소 가격 띄우기<br>
      - 장바구니 페이지 개별, 전체 삭제 기능 구현<br>
      - 데이터 크롤링
    </td>
    <td>
      - 지도페이지 검색기능<br>
      - 주문서 페이지<br>
      - 판매자 추가/수정<br>
      - 판매자 주문관리 페이지<br>
      - 판매자 주문  상세 확인 기능<br>
      - 파이어베이스<br>
      - DB 설계/구축
    </td>
    <td>
      - HTML,CSS 총괄<br>
      - UI,UX 디자인<br>
      - 디자인 오픈 소스 수집<br>
      - 페이지별 비동기 화면 구현<br>
      - 다크모드<br>
      - 애니메이션
    </td>
    <td>
      - 회원가입, 로그아웃<br>
      - 메뉴 목록 페이지에서 메뉴들 출력 기능 구현 & 장바구니에 담기<br>
      - 매진 여부 선택 화면<br>
      - 주문 내역 출력<br>
      - 결제  API
    </td>
    <td>
      - 카카오 간편 로그인<br>
      - 판매자 페이지에서 판매자 매출관리<br>
      - 판매자 UI 디자인 구현
    </td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/go-hui-cheong" target='kecaseo9'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/kecaseo9" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
  </tr>
</table>

## 🤾‍♂️ 트러블슈팅
개념: 문제 해결을 위해 문제의 원인을 논리적이고 체계적으로 찾는 일이며 제품이나 프로세스의 운영을 재개
프로젝트 진행하는 동안 발생했던 이슈 중 가장 기억에 남았던 문제와 해결 프로세스 나열(2~5가지 정도)
  
* 트러블 슈팅1<br>
** session에 저장된 menu_list를 인덱싱해서 가져오지 못함
**
 문제점 설명 및 해결방안
 
* 문제2<br>
 문제점 설명 및 해결방안
