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
	<div id="locationAdd">
	<button onclick="add()">+</button>
	
	<select id="location" onchange="addSelect(this)">
	<!-- 이거 어떻게 나눠야하는지 사회 잘하는 사람들에게 물어보기 value 값에 따라 if문으로 일치시 다른 selcet 박스가 나오게 한다. -->
		<option>--도시를 선택해주세요--</option>
		<option value="0">서울특별시</option>
		<option value="1">경기도</option>
		<option value="2">대구광역시</option>
		<option value="3">인천광역시</option>
		<option value="4">광주광역시</option>
		<option value="5">대전광역시</option>
		<option value="6">울산광역시</option>
	</select>
	
	<select id="locationSub">
		<option>--지역구를 선택해주세요</option>
	</select>
	<br>
	</div>
	관심지역은 최대 3개까지 설정 가능합니다.<br>
	
	<div id="hobbyBox">
	
	</div>
	<br>
	관심 주제 <!-- 관심 지역과 상황 동일/ 단 여기는 checkbox 이용으로 좀 더 쉬울 예정. --><br>
	모임<br>
	<!-- onclick hobby+숫자로 이루어져있어서 리팩토링 가능 -->
	<input type="checkbox" id="hobby0" value="교육" onclick="goHobbyBox('hobby0')"> 교육 <br>
	<input type="checkbox" id="hobby1" value="세미나/컨퍼런스" onclick="goHobbyBox('hobby1')"> 세미나/컨퍼런스 <br>
	<input type="checkbox" id="hobby2" value="강연" onclick="goHobbyBox('hobby2')"> 강연 <br>
	<input type="checkbox" id="hobby3" value="취미/소모임" onclick="goHobbyBox('hobby3')"> 취미/소모임 <br>
	<input type="checkbox" id="hobby4" value="문화/예술/방송" onclick="goHobbyBox('hobby4')"> 문화/예술/방송 <br>
	<input type="checkbox" id="hobby5" value="공모전" onclick="goHobbyBox('hobby5')"> 공모전 <br>
	<input type="checkbox" id="hobby6" value="전시/박람회" onclick="goHobbyBox('hobby6')"> 전시/박람회 <br>
	<input type="checkbox" id="hobby7" value="이벤트/파티" onclick="goHobbyBox('hobby7')"> 이벤트/파티 <br>
	<input type="checkbox" id="hobby8" value="패션/뷰티" onclick="goHobbyBox('hobby8')"> 패션/뷰티 <br>
	<input type="checkbox" id="hobby9" value="기타" onclick="goHobbyBox('hobby9')"> 기타 <br>
	
	<!-- 홈이나 다른곳으로 이동하기위한 단추 -->
	<!-- 취소 버튼을 누르면 어디로 이동 할 것인가? -->
	<button onclick="location.href='home'">취소</button>
	<button onclick="location.href='signupAction'">다음</button>
</body>

	<!-- 관심 주제 checkbox이벤트 시작 -->
	<script>
		function goHobbyBox(id){
			let btn = document.getElementById(id);
			let content = document.createElement("button");
			let target = document.getElementById("hobbyBox");
			
			content.id = id;
			content.innerHTML = btn.value;
			content.onclick = remove(id);
			target.appendChild(content);
		}
		function remove(){
			
		}
	</script>
	<!-- 관심 주제 checkbox이벤트 종료 -->

	<!-- 시군구 추가 메서드 2개 시작 -->
	<script>
	// 현재 문제점 : 시도 셀렉트 창을 선택시, 1:1 대응으로 군구 셀렉트 창이 대응되지 않는다.
	// 현재 단추는 제대로 인식함.
	// 그리고 3개까지 설정해야하는데 3개까지 설정 못함.
	function add(){
			let id = document.getElementById("locationAdd");
				id.innerHTML += "<button onclick='add()'>+</button>	<select id='location' onchange='addSelect(this)'>" +
								"<option>--도시를 선택해주세요--</option>" +
								"<option value='1'>서울특별시</option>"+
								"<option value='2'>경기도</option>"+
								"<option value='3'>대구광역시</option>"+
								"<option value='4'>인천광역시</option>"+
								"<option value='5'>광주광역시</option>"+
								"<option value='6'>대전광역시</option>"+
								"<option value='7'>울산광역시</option>"+
								"</select> <select id='locationSub'><option>--지역구를 선택해주세요</option></select><br>";
		
	}
	
	function addSelect(e){
		let city = new Array(["서울0","서울2","서울3"], ["경기1","겨ㅑㅇ기2","경기3"], ["대구2","대구2","대구3"], ["인천3","인천2","인천3"],
					["광주4","광주2","광주3"], ["대전5","ㄷ애전2","대전3"], ["울산6","울산2","울산3"]);

		let target = document.getElementById("locationSub");
		var select = city[(e.value)*1];
		
		target.options.length = 0;
		
		for(var x in select){
			let opt = document.createElement("option");
			opt.value = select[x];
			opt.innerHTML = select[x];
			target.appendChild(opt);
		}
	}
	</script>
	<!-- 시군구 추가 메서드 2개 종료 -->
	
</html>
<%@include file="include/footer.jsp" %>