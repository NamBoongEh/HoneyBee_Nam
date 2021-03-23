<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>
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
	<input type="checkbox"> (필수) 이용약관 동의 <a href="#tos1">내용보기</a><br>
	<input type="checkbox"> (필수) 개인정보 수집 및 이용 동의 <a href="#tos2">내용보기</a><br>
	<input type="checkbox"> (선택) 이메일 수신 <br>
	단, 모임 참여와 관련된 정보는 수신동의 여부 관계없이 발송됩니다.
	<br>
	<button onclick="location.href='home'">회원가입 완료</button><br>

	<button onclick="location.href='signup' ">뒤로 가기</button>
</body>

<script type="text/javascript">
	
	$(document).ready(function(){
		//내용약관 모달창 띄우기
		$("#tos1").click(function(){
			$("#modal1").modal();
		});
		
		$("#tos2").click(function(){
			$("#modal2").modal();
		});
	});
</script>

</html>
<%@include file="include/footer.jsp" %>