<%@ page import="java.util.*" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
    <title>login</title>
</head>

<body>
	<input type="text" name="id" placeholder="아이디를 입력해주세요."><br>
	<input type="password" name="pw" placeholder="비밀번호를 입력해주세요."><br>
	<input type="checkbox"> 로그인 상태 유지
	<a href="">아이디/비밀번호 찾기</a><br>
	<input type="button" name="login" value="로그인"> <br>
	<a href="">회원가입</a>
</body>
</html>