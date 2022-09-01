# TeamProject-kizuc
[💻 팀 프로젝트 링크](https://github.com/TEAMPROJECT-2/Project) 팀프로젝트를 진행 중인 링크입니다. 끝나면 프로젝트를 이곳에 올릴 예정입니다.<br>
[📝 개발일지](https://github.com/kizuc/TeamProject-kizuc/blob/main/TID.md) | 
[⚡ 에러노트](https://github.com/kizuc/TeamProject-kizuc/blob/main/error-note.md)
팀프로젝트에 관련된 것들을 정리합니다.
<hr><hr>

# 나에게 딱 맞는 운동 쇼핑몰! <핏티드 Fitted>
<img width="50%" src="https://user-images.githubusercontent.com/108128650/187670001-4b00e7ed-d12b-49f2-9d06-0c7fb9b9693b.png"/>

2조의 운동용품 쇼핑몰 '핏티드' 프로젝트 <br>
- 배포주소 적을 예정
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
10. [평가](#평가)
<hr>

## 서비스 소개
업체가 소비자에게 운동상품을 팔 수 있고 회원끼리 이벤트에 참여하여<br>
자신의 운동현황을 공유할 수 있는 <운동용품 쇼핑몰> 사이트
<br>
<hr>

## 개발 배경
팬데믹이 소강되고 있는 이 시점, 팬데믹 후유증을 운동으로 극복하려는 사람들로 인해 운동하는 인구가 증가하였다.<br> 
미라클 라이프와 계획적인 삶을 추구하는 트렌드를 착안하여 운동 습관을 만들고 상품을 팔 수 있는 쇼핑몰 사이트를 개발하게 되었다. 
<br>
<hr>

## 담당 역할
- 김주영 : `전반적인 뷰페이지, CSS 담당` 메인, 로그인, 마이페이지, 회원 관리 담당
- 김창현 : 커뮤니티 게시판(댓글, 공지), 쿠폰, 주문 담당
- 손대호 : 주문/배송조회, 포인트, 상품추천 담당
- 이윤경 : 상품 정보, 리뷰(별점, 비밀글), 챗봇, 신고, 검색 담당
- 이채연 : 장바구니, 관리자페이지, 업체페이지 담당
- 전은표 : `DB 전반적인 테이블 작성 담당` 찜, 좋아요, 결제 담당
<hr>

## 기술 스택
### - Front-end
- 프레임워크 및 라이브러리 : Bootstrap5, jQuery, jQuery.ajax
- 언어 : html, css, Javascript
### - Back-end
- 프레임워크 및 라이브러리 : Spring, Mybatis
- DBMS : MySQL
- 언어 : Java(8), JSP
- 서버 : Tomcat 8.5
### - Tools
- 협업툴 : [Google Sheet - 일정관리](https://docs.google.com/spreadsheets/d/19oPNfCTL_OXyHovfZxVAREARITUT3rs9SKK6dXbfqek/edit?usp=sharing), [Google Docs - 회의록](https://docs.google.com/document/d/1PSWTycKDrVyLK1T_5gNeK7clSABQ1OIOJXGoVBxH6jU/edit?usp=sharing), 윔지컬
- IDE : Eclipse(STS)
### - Version Control
- Git, Github
### - 기타 API
- 다음 우편번호 서비스
<hr>

## 제작 기간
2022.08.03 ~ 2022.09.30 (진행중)
<hr>

## 개발 과정

### - 개념/논리모델링
![pt6](https://user-images.githubusercontent.com/108128650/187753550-f1c3511b-6388-4749-9cdc-1eb71d995a99.png)
<br>

### - 회의록 (업데이트 중)
![보고서](https://user-images.githubusercontent.com/108128650/187753547-c69fa28b-4555-4a60-9c07-9a1d0230f58a.jpg)
손그림으로 페이지를 그려보고 필수 기능 위주로 정리하는 과정을 윔지컬 이용해 모델링을 했고 회의와 메신저를 통해 의견을 공유했다.<br>
<br>

### - 일정 관리 (업데이트 중)
![일정관리](https://user-images.githubusercontent.com/108128650/187761902-e9781ce3-353c-409d-863e-f9a1794b511c.JPG)
<br>

### - 벤치마킹 
![mark](https://user-images.githubusercontent.com/108128650/187758607-f72fa5db-5c83-4b6c-a488-3721f34f6d2a.png)
<br>
<hr>

## 설계
### - ERD 다이어그램
![팀플erd](https://user-images.githubusercontent.com/108128650/187747172-3b36bcfc-cf13-449e-826e-71f738f849f7.png)
업데이트 중...
<br>
### - 기능 설계
[기능 및 URI / 데이터 형식](https://docs.google.com/document/d/1gJzzP-Zj4Uw9-XBZmm_NiozNeszA2KQaJULUQQanliE/edit?usp=sharing)
업데이트 중...
<hr>

## 프로젝트 화면
![pt1](https://user-images.githubusercontent.com/108128650/187747124-c24d5776-0490-439d-9d4d-2815ab400b76.png)
![pt2](https://user-images.githubusercontent.com/108128650/187747121-8e7cb177-ea97-4623-8667-bd98a71e9973.png)
![pt3](https://user-images.githubusercontent.com/108128650/187747119-8f70646f-34c6-419e-8e6c-f73494d74101.png)
![pt4](https://user-images.githubusercontent.com/108128650/187747117-1dc2b60a-00ce-4c8f-a888-e5d34e669afa.png)
![pt5](https://user-images.githubusercontent.com/108128650/187747112-7a258c4b-41d5-471d-b97f-4d0118e9a222.png)
<hr>

## 구현 목록
### + Pages
 - [X] - 메인페이지 
 * 회원
 - [X] - 로그인 페이지
 - [X] - 회원가입 페이지
 - [X] - 아이디 찾기 페이지
<br>

 * 스토어
 - [X] - 장바구니 페이지
 - [X] - 상품 목록 페이지
 - [X] - 상품 상세 페이지
 - [X] - 결제 페이지
<br>

 * 마이페이지
 - [X] - 회원 정보 페이지
<br>

 * 업체 페이지
 - [X] - 상품 등록 페이지
<br>

 * 게시판
 - [X] - 게시글 목록 페이지
<br>

 * 관리자 페이지
<br>

 * 포인트
 - [X] - 포인트 충전 페이지
<br>

### + Function
 * 회원
 - [X] - 로그인
 - [X] - 회원가입
 - [X] - 아이디 찾기
<br>

 * 업체페이지
- [X] - 상품 등록 페이지
<br>

 * 게시판
 - [X] - 게시글 등록, 삭제, 파일 첨부
<br>

 * 포인트
 - [X] - 포인트 충전
<br>

## 평가


