# TeamProject-kizuc
[💻 팀 프로젝트 링크](https://github.com/TEAMPROJECT-2/TP) 팀프로젝트를 진행한 링크로 전체 코드를 볼 수 있습니다.<br>
[📝 개발일지](https://github.com/kizuc/TeamProject-kizuc/blob/main/TID.md)  | 
[⚡ 에러노트](https://github.com/kizuc/TeamProject-kizuc/blob/main/error-note.md)
팀프로젝트에 관련된 것들을 개인적으로 정리합니다.
<hr><hr>

# 나에게 딱 맞는 운동 쇼핑몰! <핏티드 Fitted>
<img width="50%" src="https://user-images.githubusercontent.com/108128650/187670001-4b00e7ed-d12b-49f2-9d06-0c7fb9b9693b.png"/>

> 2조의 운동용품 쇼핑몰 '핏티드' 프로젝트 <br>
- [http://itwillbs15.cafe24.com/main/main](http://itwillbs15.cafe24.com/main/main)
- [핏티드 PPT](https://github.com/TEAMPROJECT-2/TP/files/9681178/2._.PPT.pdf)
<br><br>


## 목차

1. [서비스 소개](#서비스-소개)
2. [개발 배경](#개발-배경)
3. [담당 역할](#담당-역할)
4. [기술 스택](#기술-스택)
5. [제작 기간](#제작-기간)
6. [설계 과정](#설계-과정)
7. [설계](#설계)
8. [프로젝트 화면](#프로젝트-화면)
9. [구현 목록](#구현-목록)
<hr>

## 서비스 소개
업체가 소비자에게 운동상품을 팔 수 있는 <운동용품 쇼핑몰> 사이트
<br>
<hr>

## 개발 배경
팬데믹이 소강되고 있는 이 시점, 팬데믹 후유증을 운동으로 극복하려는 사람들로 인해 운동하는 인구가 증가함에 따라 상품을 팔 수 있는 쇼핑몰 사이트를 개발하게 되었다. 
<br>
<hr>

## 담당 역할
- 김주영 : `전반적인 뷰페이지 CSS 전당` 회원단 전반, 관리자페이지, 챗봇
- 김창현 : `주문-결제 담당` 주문 정보, 배송지 관리, 쿠폰 적용
- 손대호 : `포인트 담당` 주문/배송조회, 포인트 , 주문내역 
- 이윤경 : `스토어 전담` 상품 정보, 관련 상품, 리뷰(별점), 분류별 검색
- 이채연 : `장바구니 담당` 업체페이지, 장바구니, 쿠폰 등록
- 전은표 : `커뮤니티 전담` 게시판(공지/좋아요), 상품 찜
<hr>

## 기술 스택
### - Front-end
- 프레임워크 및 라이브러리 : Bootstrap5, jQuery, jQuery.ajax.json
- 언어 : HTML, CSS, Javascript
### - Back-end
- 프레임워크 및 라이브러리 : Spring, Mybatis, Spring-security 
- DBMS : MySQL
- 언어 : Java(8), JSP
- 서버 : Tomcat 8.5
### - Tools
- 협업툴 : Google Sheet - 일정관리, Google Docs - 회의록, 윔지컬 - 설계
- IDE : Eclipse(STS)
### - Version Control
- Git, Github
### - 기타 API
- 다음 우편번호API, 채널톡 API, 네아로 API, 카카오톡 로그인 API, 배송 조회 API 
<hr>

## 제작 기간
2022.08.03 ~ 2022.09.30
<hr>

## 개발 과정

### - 개념/논리모델링
![pt6](https://user-images.githubusercontent.com/108128650/187753550-f1c3511b-6388-4749-9cdc-1eb71d995a99.png)
<br><br>

### - 회의록
![보고서](https://user-images.githubusercontent.com/108128650/187753547-c69fa28b-4555-4a60-9c07-9a1d0230f58a.jpg)
손그림으로 페이지를 그려보고 필수 기능 위주로 정리하는 과정을 윔지컬 이용해 모델링을 했고 회의와 메신저를 통해 의견을 공유했다.<br>
<br>

### - 일정 관리
![image](https://user-images.githubusercontent.com/108128650/194315776-9c4eea6b-631c-4d59-aa0b-83f4c6898f10.png)
<br>

### - 벤치마킹 
![mark](https://user-images.githubusercontent.com/108128650/187758607-f72fa5db-5c83-4b6c-a488-3721f34f6d2a.png)
<br>
<hr>

## 설계
### - ERD 다이어그램

![팀플erd](https://user-images.githubusercontent.com/108128650/187747172-3b36bcfc-cf13-449e-826e-71f738f849f7.png)

<br>

### - 기능 설계

[기능 및 URI / 데이터 형식 정리 문서](https://docs.google.com/document/d/1bD62gQZeH9kPO9id1HmV2T-vTDqM6hM2Vh1rFZxttUk/edit)
<br>
![fit1](https://user-images.githubusercontent.com/108128650/194317415-22b88743-7bf4-4519-949f-69353283e191.PNG)
![f2](https://user-images.githubusercontent.com/108128650/194317421-2a5db794-dd44-462c-95be-477eb3796c3f.PNG)
![f3](https://user-images.githubusercontent.com/108128650/194317423-d5963d30-3753-47f1-b9d1-74dd3a50beb7.PNG)


<br>
<hr>

## 프로젝트 화면
![ft1](https://user-images.githubusercontent.com/108128650/194319044-bc0561d8-2ceb-4bab-88ea-143a7e29ea47.PNG)
![ft2](https://user-images.githubusercontent.com/108128650/194319052-e69f620b-5821-4006-af7f-17db58a32282.PNG)
![ft6](https://user-images.githubusercontent.com/108128650/194319063-3f6e11ea-56f6-40d3-9bec-06129fe1a253.PNG)
![ft3](https://user-images.githubusercontent.com/108128650/194319058-783aa85d-44e1-4e6f-b178-725d6f6857bd.PNG)
![ft4](https://user-images.githubusercontent.com/108128650/194319060-08e15dfe-a799-4f5e-b66c-b8aeb76d41d8.PNG)
![ft5](https://user-images.githubusercontent.com/108128650/194319062-37453246-bca4-45cf-b8a3-d7cb8b940c9b.PNG)

<hr>

## 구현 목록
### + Pages
 - [X] - 메인 페이지
 - [X] - 포인트 충전/결제 페이지
 - [X] - 장바구니 페이지
 <br>
 
 * 회원
 - [X] - 로그인, SNS 로그인 페이지
 - [X] - 회원가입 페이지
 - [X] - 아이디 찾기 페이지
 - [X] - 비밀번호 찾기 페이지
<br>

 * 스토어
 - [X] - 스토어 페이지
 - [X] - 상품 정보, 리뷰, 관련 상품 페이지
 - [X] - 장바구니 페이지
 - [X] - 장바구니 페이지
 - [X] - 결제 페이지
<br>

 * 마이페이지
 - [X] - 마이페이지 메인 페이지
 - [X] - 계정 정보, 탈퇴 페이지
 - [X] - 비밀번호 변경 페이지
 - [X] - 배송지 관리 페이지
 - [X] - 주문 목록 페이지
 - [X] - 포인트 페이지
 - [X] - 쿠폰 페이지
 - [X] - 나의 글 목록 페이지
 - [X] - 찜 목록
 - [X] - 좋아요 목록
<br>

 * 업체 페이지
 - [X] - 업체페이지 메인 페이지
 - [X] - 상품 등록 페이지
 - [X] - 상품 목록 페이지
 - [X] - 주문 등록 페이지
<br>

 * 관리자 페이지
 - [X] - 관리자페이지 메인 페이지
 - [X] - 회원 관리 페이지
 - [X] - 주문 관리 페이지
 - [X] - 배송 관리 페이지
 - [X] - 업체 관리 페이지
 - [X] - 상품 관리 페이지
 - [X] - 쿠폰 관리 페이지
<br>

 * 스토어
 - [X] - 스토어 페이지
 - [X] - 상품 정보/리뷰/관련상품 페이지
 - [X] - 장바구니 페이지
<br>

 * 게시판
 - [X] - 게시글 목록 페이지
<br>


### + Function
 * 회원
 - [X] - 일반/업체 로그인
 - [X] - 일반/업체 회원가입
 - [X] - 아이디/비밀번호 찾기
<br>

 * 마이페이지
 - [X] - 회원 정보 수정/탈퇴
 - [X] - 비밀번호 변경
 - [X] - 배송지 입력/수정
 - [X] - 주문 목록 조회/주문 취소
 - [X] - 포인트 조회
 - [X] - 쿠폰 코드 조회
 - [X] - 나의 글 목록 조회
 - [X] - 찜 목록 조회
 - [X] - 좋아요 목록 조회
<br>

 * 업체페이지
- [X] - 업체 통계 
- [X] - 업체 정보 수정
- [X] - 상품 목록/검색/삭제
- [X] - 주문 목록/배송 관리
<br>

 * 관리자페이지
- [X] - 전체 통계
- [X] - 전체 회원 목록/삭제
- [X] - 전체 주문 목록
- [X] - 전체 배송 목록
- [X] - 전체 업체 목록
- [X] - 전체 상품 목록
- [X] - 전체 쿠폰 등록/삭제/목록
<br>

 * 스토어
 - [X] - 상품 목록/분류
 - [X] - 상품 분류별 검색
 - [X] - 상품 리뷰/별점
 - [X] - 장바구니 추가/삭제/계산
<br>

 * 주문/결제
 - [X] - 주문 정보/수량 계산
 - [X] - 쿠폰 적용 여부
 - [X] - 결제
<br>

 * 게시판
 - [X] - 게시글 파일 첨부 등록/수정/삭제
 - [X] - 게시글 검색
 - [X] - 공지사항 
<br>

 * 포인트
 - [X] - 포인트 충전
<br>

 * 챗봇
 - [X] - 고객상담 1:1 채팅
<br>


