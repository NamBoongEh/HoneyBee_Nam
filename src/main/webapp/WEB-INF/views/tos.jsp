<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<br>
	
	<h2>이용약관/개인정보 수집 및 이용 동의</h2>

	<input type="checkbox">전체동의<br>
	
	<input type="checkbox"> (필수) 만 14세 이상입니다.<br>
	<input type="checkbox"> (필수) 이용약관 동의 <a href="">내용보기</a><br>
	<input type="checkbox"> (필수) 개인정보 수집 및 이용 동의 <a href="">내용보기</a><br>
	<input type="checkbox"> (선택) 이메일 수신 <br>
	단, 모임 참여와 관련된 정보는 수신동의 여부 관계없이 발송됩니다.
	<br>
	<button>회원가입 완료</button>

	<button onclick="location.href='signup.jsp' ">뒤로 가기</button>
</body>
</html>