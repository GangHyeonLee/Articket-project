<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Articket 비밀번호찾기</title>
	<link href="${path}/resources/css/find/findidview.css" rel="stylesheet"/>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<body>
<%@include file="../includes/header.jsp" %>
	<!-- 비밀번호 찾기 화면 form -->
	<div id="findid-form">
		<p class="main-title">비밀번호 찾기</p>
		<div class="sub-title">
			<a class="a-find" href="<c:url value='/user/findIdPage'/>">아이디 찾기</a>
			<span style="margin: 0 50px;">|</span>
			<a class="a-find" href="<c:url value='/user/findPwPage'/>">비밀번호 찾기</a>
		</div>
		
		<hr class="hr-line"/>
		
		<!-- 아이디를 찾기위한 입력창 -->
		<input id="i_id" name="login_id" class="find-input" type="text" placeholder="아이디 입력"/>
		
		<input id="i_email" name="email" class="find-input" type="text" placeholder="이메일 입력"/>
		
		<div style="display:none;"  id="empty_id" class="inputError">아이디를 입력해주세요.</div>
		<div style="display:none;" id="empty_email" class="inputError">이메일을 입력해주세요.</div>
		<div style="display:none;" id="fail_find" class="inputError">존재하지 않는 회원정보입니다.</div>
		<button class="find-btn" id="btn">비밀번호 찾기</button><br>
		<p>비밀번호를 찾으셨나요? <a href="/user/loginPage" class="login-link">로그인</a></p>
		

	</div>
	
	<!-- 아이디찾기 버튼 클릭시 팝업창의 form -->
	<div class="modal">
	 <div class="modal_content" title="클릭하면 창이 닫힙니다.">
	 	<div>
			<div class="result-id-header">고객님의 비밀번호를 찾았습니다.</div>
		 	<div class="result-id-nav">비밀번호 확인 후 로그인해 주세요.</div>
			<img src="../resources/img/find/profile.PNG"><span class="result-data" id ="result_data"></span>
	 	</div>
	 </div>
    </div>
    
    <%@include file="../includes/footer.jsp" %>
	<!-- 스크립트 -->
<script type="text/javascript">

		/* 클릭 또는 input창 엔터입력시 모달 팝업창 생성 */
$(document).ready(function(){
	
 $("#btn").click(function(){
	 $("#empty_id").css("display" , "none");
	 $("#empty_email").css("display" , "none");
	 $("#fail_find").css("display" , "none");
	 
	 let login_id = $("#i_id")
	   , email = $("#i_email")
	   ;
	 
	 if("" == login_id.val()){
		 $("#empty_id").css("display" , "");
		
		 return false;
	 }if("" == email.val()){
		 $("#empty_email").css("display" , "");
		 
		 return false;
	 }else{
		 
		 	/*  ajax 이용한 비동기식 데이터호출 */
		 	$.ajax({
			 	type: 'post',   //post방식으로 명시
				url : '/user/findPwd',  //이동할 controller url 
				dataType:'json',   //json형식으로 받기
				data : {
				"login_id": login_id.val(),
				"email":email.val()
				},
				success: function(data){   //데이터 주고받기 성공했을 경우 실행할 결과
					
					login_id.val("");
					email.val("");
					
				/* 	debugger; */
					
					if ( "error" == data.result ) {
						$("#fail_find").css("display" , "");
					} else if ("success" == data.result) {
						 $(".modal").fadeIn();
						 $("#result_data").text(data.password);
					}
					
				},
				error:function(msg){   //데이터 주고받기가 실패했을 경우 실행할 결과
					alert("Error : " + msg + ".");
				}
				
			});
	 	
	 };	
	 	
	 	
	});
 

 		/* input 입력 후 엔터키 누를시 아이디찾기 버튼 클릭 실행 */
	$("#i_id").keydown(function(keyNum) {
			if (keyNum.keyCode == 13) {
				$("#btn").click()
			}
		});
	
	$("#i_email").keydown(function(keyNum) {
		if (keyNum.keyCode == 13) {
			$("#btn").click()
		}
	});

	});

		/* 팝업창 종료 (팝업창 직접클릭, body 클릭, esc 버튼) */
	$(".modal_content").click(function() {
		$(".modal").fadeOut();
	});
	
	$("body").click(function() {
		$(".modal").fadeOut();
	});
	$(document).keydown(function(e) {
	    if ( e.keyCode == 27 || e.which == 27 ) {
	    	$(".modal").fadeOut();
	    }
	});
</script> 
</body>
</html>