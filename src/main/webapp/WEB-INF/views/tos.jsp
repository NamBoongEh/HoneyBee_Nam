<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<style>
	.modal{
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}	
	.modal_content{
		background-color : rgb(255, 255, 255);
		box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19),
					0 6px 6px rgba(0, 0, 0, 0.23);
		postion: relative;
		top: 0;
		/* 위치 조정 숫자가 클수록 화면 가장 위로 올라온다. */
		z-index: 10;
	}
	.modal_overlay{
		background-color : rgba(0, 0, 0, 0.6);
		width: 100%;
		height: 100%;
		position : absolute;
		z-index: 5;
	}
	.hidden{
		display: none;
	}
</style>
<body>
	<h1>회원가입</h1>
	<br>
	
	<h2>이용약관/개인정보 수집 및 이용 동의</h2>

	<input type="checkbox" id="checkAll" onclick="selectAll()">전체동의<br>
	
	<input type="checkbox" id="check1"> (필수) 만 14세 이상입니다.<br>
	<input type="checkbox" id="check2"> (필수) 이용약관 동의 <button id="modal1">내용보기</button><br>
	
	<!-- modal1 시작 -->
	<div class="modal hidden">
		<div class="modal_overlay"></div>
		<div class="modal_content">
				<p>개쩌는 약관 내용</p>
			<button onclick=>닫기</button>
		</div>
	</div>
	<!-- modal1 끝 -->

	<input type="checkbox" id="check3"> (필수) 개인정보 수집 및 이용 동의 <button id="modal2">내용보기</button><br>

	<!-- modal1 시작 -->
	<div class="modal hidden">
		<div class="modal_overlay"></div>
		<div class="modal_content">
				<p>개쩌는 약관 내용</p>
			<button onclick=>닫기</button>
		</div>
	</div>
	<!-- modal1 끝 -->
	
	<input type="checkbox" id="check4"> (선택) 이메일 수신 <br>
	단, 모임 참여와 관련된 정보는 수신동의 여부 관계없이 발송됩니다.
	
	<br>
	
	<button onclick="go()">회원가입 완료</button><br>
	<button onclick="location.href='signup' ">뒤로 가기</button>
</body>

<script>
window.onload = function(){
	// modal 이벤트 시작
	const open = document.getElementById("modal1");
	const modal = document.querySelector(".modal");
	const overlay = modal.querySelector(".modal_overlay");
	const close = modal.querySelector("button");
	
	const openModal = () => {
		modal.classList.remove("hidden");
	}
	const closeModal = () => {
		modal.classList.add("hidden");
	}
	
	open.addEventListener("click", openModal);
	overlay.addEventListener("click", closeModal);
	close.addEventListener("click", closeModal);
	// modal 이벤트 종료
	
};

// checkbox 이벤트 시작
function selectAll(){
	const checkboxes = document.getElementById("checkAll");
	
	if(checkboxes.checked){
		for(let i=1; i<=4; i++){
			document.getElementById("check"+i).checked = true;
		};
	};
};
</script>


</html>
<%@include file="include/footer.jsp" %>