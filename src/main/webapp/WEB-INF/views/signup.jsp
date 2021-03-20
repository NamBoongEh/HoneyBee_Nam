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
	
	<h2>필수정보</h2>
	<br>
	
	아이디(이메일) <input type="text" name="id" placeholder="이메일 주소 입력"> @ 
	<select name="domain">
		<option selected="selected">이메일 선택</option>
		<option value="naver">naver.com</option>
		<option value="google">google.com</option>
		<option value="daum">daum.net</option>
		<option value="직접 입력하기">직접 입력하기</option>
	</select> <br>
	
	<button name="emailCheck">이메일 중복 체크</button> <br>
	
	비밀번호 <input type="text" name="pw" placeholder="비밀번호를 입력해주세요."> <br>
	
	이름 <input type="text" name="name" placeholder="이름을 입력해주세요."> <br>
	
	닉네임 <input type="text" name="nick" placeholder="닉네임을 입력해주세요."> <br>
	<button name="nickCheck">중복 확인</button> <br>
	
	생년월일
	<select name="year">
		<option value="1993">1993</option>
		<option value="1992">1992</option>
	</select>
	년도
	<select name="month">
		<option value="03">03</option>
		<option value="1992">1992</option>
	</select>
	월
	<select name="year">
		<option value="1993">1993</option>
		<option value="1992">1992</option>
	</select>
	일 <br>
	
	<h2>관심정보</h2> 개인별 맞춤 정보 제공<br>
	
	관심 지역 <!-- select에서 클릭을 둘 다 하면 완성되어서 이 옆에 select가 옮겨가는 식으로? 아니면 단추가 생기는 식으로 옮겨간다.(팀원들에게 조언 구하기) --><br>
	지역
	<!-- 클릭하면 관심 지역이 추가되는 +버튼 -버튼도 있어야한다. -->
	<button>+</button><select name="location">
	<!-- 이거 어떻게 나눠야하는지 사회 잘하는 사람들에게 물어보기 value 값에 따라 if문으로 일치시 다른 selcet 박스가 나오게 한다. -->
		<option value="city">서울특별시</option>
		<option value="city">경기도</option>
		<option value="city">대구광역시</option>
		<option value="city">인천광역시</option>
		<option value="city">광주광역시</option>
		<option value="city">대전광역시</option>
		<option value="city">울산광역시</option>
	</select><br>
	관심지역은 최대 3개까지 설정 가능합니다.<br>
	
	<br>
	관심 주제 <!-- 관심 지역과 상황 동일/ 단 여기는 checkbox 이용으로 좀 더 쉬울 예정. --><br>
	모임<br>
	<input type="checkbox"> 교육 <br>
	<input type="checkbox"> 세미나/컨퍼런스 <br>
	<input type="checkbox"> 강연 <br>
	<input type="checkbox"> 취미/소모임 <br>
	<input type="checkbox"> 문화/예술/방송 <br>
	<input type="checkbox"> 공모전 <br>
	<input type="checkbox"> 전시/박람회 <br>
	<input type="checkbox"> 이벤트/파티 <br>
	<input type="checkbox"> 패션/뷰티 <br>
	<input type="checkbox"> 기타 <br>
	
	<!-- 홈이나 다른곳으로 이동하기위한 단추 -->
	<!-- 취소 버튼을 누르면 어디로 이동 할 것인가? -->
	<button onclick="location.href='home'">취소</button>
	<button onclick="location.href='signupAction'">다음</button>
</body>
</html>