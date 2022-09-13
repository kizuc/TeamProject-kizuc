# ⚡ 에러노트
##### 팀프로젝트를 하면서 겪은 오류를 개인적으로 정리합니다. 
<hr>


## [Spring] The Tomcat server configuration Server at localhost-config is missing...
스프링에서 서버 연결을 하다가 발생
> 발생 원인 : Tomcat config가 꼬이면 생긴다.
#### 해결 : 기존 서버 파일을 지우고 다시 설정해주면 된다.
[해결 방법 자세히](https://kijuk.tistory.com/144?category=1056346)
<hr>

## [Spring] org.springframework.web.servlet.PageNotFound - Request method 'GET' not supported
매핑하다가 오류 발생
> 발생 원인 : 깃허브 정책이 바뀌어서 생긴 문제
#### 해결 : master-main 설정을 바꿔주면 된다.
[해결 방법 자세히](https://kijuk.tistory.com/146)
<hr>

## [Github] There isn't anything to compare.
깃허브 `push` 에서 발생
> 발생 원인 : 해당 메소드가 GET 방식으로 지원하지 않는다.
#### 해결 : 매핑 메서드 뿐 아니라 값을 들고오는 컴포넌트 단에 적힌 데이터 전송 방식을 바꾼다.
[해결 방법 자세히](https://kijuk.tistory.com/148?category=1056346)
<hr>

## [Spring] org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException
DTO 멤버변수와 DB 컬럼명이 다른데 호환이 안돼서 발생(insert는 되는데 select가 안됨) 
> 발생 원인 : mapper 단의 오류 <br>
> 이외에도  mapper의 명칭이 같은 namespace가 Application 내에 중복 <br>
> mapper id, Parameter와 bean의 field명 틀림, <br>
> sql.xml에서 정의된 namespace와 DAO에서 호출하는 namespace가 다를 경우, 오타 등으로 발생한다.
#### 해결 : 오류가 난 부분을 수정해주면 된다. 나같은 경우는 카멜케이스 표기법과 스네이크 표기법이 호환이 되지 않아 관련 마이바티스 세팅을 해주었다.
[해결 방법 자세히](https://kijuk.tistory.com/155?category=1056346)
<hr>

## [Spring] HTTP 404 - 요청된 리소스 [/]은(는) 가용하지 않습니다.
Invocation of init method failed; nested exception is org.springframework.core.NestedIOException: Failed to parse mapping resource: 'file [오류난 파일 경로]'; nested exception is org.apache.ibatis.builder.BuilderException: Error creating document instance.  Cause: org.xml.sax.SAXParseException; lineNumber: 68; columnNumber: 49; Attribute "resultType" must be declared for element type "update".
> 발생 원인 : 서버 연결 오류, 나의 경우에는 mapper단의 resultType의 유무로 발생
#### 해결 : resultType을 맞게 수정
[해결 방법 자세히](https://kijuk.tistory.com/160?category=1056346)
<hr>

## [Spring] javax.mail.AuthenticationFailedException(535-5.7.8)
Request processing failed; nested exception is org.springframework.mail.MailAuthenticationException: 
Authentication failed; nested exception is javax.mail.AuthenticationFailedException: 535-5.7.8 Username and Password not accepted.<br><br>

Gmail SMTP로 메일을 보내려다가 발생
> 발생 원인 : 계정과 비밀번호가 일치하지 않아 발생
#### 해결 : 맞게 고쳐주면 된다.
[해결 방법 자세히](https://kijuk.tistory.com/162?category=1056346)
<hr>


## [Spring] javax.mail.MessagingException: Could not connect to SMTP host: smtp.gmail.com, port: 587;
javax.mail.MessagingException: Could not connect to SMTP host: smtp.gmail.com, port: 587;
nested exception is:<br>
javax.net.ssl.SSLException: Unsupported or unrecognized SSL message. Failed messages: 
javax.mail.MessagingException: Could not connect to SMTP host: smtp.gmail.com, port: 587;
nested exception is:<br>
javax.net.ssl.SSLException: Unsupported or unrecognized SSL message; message exceptions (1) are:
Failed message 1: javax.mail.MessagingException: Could not connect to SMTP host: smtp.gmail.com, port: 587;
nested exception is:<br>
javax.net.ssl.SSLException: Unsupported or unrecognized SSL message]을(를) 발생시켰습니다.<br><br>

Gmail SMTP로 메일을 보내려다가 발생
> 발생 원인 : Gmail SMTP 인증을 거치지 않아서 발생
#### 해결 : 기존의 계정비밀번호가 들어간 곳에 앱비밀번호를 설정해주면 된다.
[해결 방법 자세히](https://kijuk.tistory.com/163?category=1056346)
<hr>

## [Spring] Error creating bean with name requestMappingHandlerMapping
> 발생 원인 : 특정 맵핑 경로가 중복되어 발생
#### 해결 : 맵핑 경로를 수정해주면 된다.
[해결 방법 자세히](https://kijuk.tistory.com/178)
<hr>

## [Spring] Injection of autowired dependencies failed
> 발생 원인 : 빈을 스프링에 주입하지 않아서 발생
#### 해결 : Service 인터페이스 파일은 있는데 특정 ServiceImpl 파일이 없어서 발생한 오류로 파일을 생성해주었다.
[해결 방법 자세히](https://kijuk.tistory.com/179)
<hr>
