<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="en">
	<!-- <script src='{% static "js/jquery-1.11.3.min.js" %}'></script> -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Articket 회원가입</title>
	<link href="${path}/resources/css/signup/signup.css" rel="stylesheet"/>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<body>
	<form action="/user/join" method="post">
		<table>
			<tr>
				<th><h1 class="main-title">회원가입</h1></th>
			</tr>
			<tr>
				<td class="id-table">
					<label for="userid">아이디</label>
				</td>
			</tr>
			<tr>
				<td>
					<input name="login_id" class="login-input" id="userid" type="text" placeholder="최소 4자 ~ 최대 20자 까지 입력" required maxlength="20" autofocus="autofocus"/>
					<br><span class="point successIdChk"></span>
					<input type="hidden" id="idDoubleChk"/>
				</td>
			</tr>
			<tr>
				<td class="pass-table">
					<label for="userpass">비밀번호</label>
				</td>
			</tr>
			<tr>
				<td>
					<input name="password" class="pass-input" id="userpass" type="password" placeholder="비밀번호는 총 60자 까지 입력가능" required maxlength="60" autocomplete="off"/>
					<br><span class="point pwChk1"></span>
					<input type="hidden" id="pwChk2"/>
				</td>
			</tr>
			<tr>
				<td class="passChk-table">
					<label for="userpasschk">비밀번호 확인</label>
				</td>
			</tr>
			<tr>
				<td>
					<input name="password_check" class="passcheck-input" id="userpasschk" type="password" placeholder="비밀번호를 동일하게 입력 해주세요." required maxlength="60" autocomplete="off"/>
					<br><span class="point successPwChk"></span>
					<input type="hidden" id="pwDoubleChk"/>
				</td>
			</tr>
			<tr>
				<td class="nick-table">
					<label for="usernickname">별명</label>
				</td>
			</tr>
			<tr>
				<td>
					<input name="nickname" class="nickname-input" type="text" id="usernickname" placeholder="별명은 2자 이상 8자 이하로 설정" required maxlength="8" autofocus/>
					<br><span class="point successNickNameChk"></span>
    				<input type="hidden" id="nickNameDoubleChk"/>
				</td>
			</tr>
			<tr>
				<td class="name-table">
					<label for="username">이름</label>
				</td>
			</tr>
			<tr>
				<td>
					<input name="name" class="name-input" type="text" id="username" placeholder="이름은 2자 이상 8자 이하로 설정" required maxlength="8" autofocus/>
					<br><span class="point successNameChk"></span>
    				<input type="hidden" id="nameDoubleChk"/>
				</td>
			</tr>
			<tr>
				 <td>
					<div class="form-group email-form">
						<label class="email-table" for="email">이메일</label>
						<div class="input-group">
							<input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="이메일 입력">
							<input type="text" class="form-control" name="userEmail2" id="userEmail2" value="@naver.com" readonly>
							<br><span class="point successEmailChk"></span>
    						<input type="hidden" id="emailDoubleChk"/>
						</div>   
						<div class="input-group-addon">
							<div class="mail-check-box">
								<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력" disabled="disabled" maxlength="6">
								<button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
							</div>
							<span id="mail-check-warn"></span>
						</div>
							<div><span class="time"></span></div>
					</div>
				</td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td class="phone-table">
					<label for="userphone">전화번호</label>
				</td>
			</tr>
			<tr>
				<td>
					<input class="phone-input" name="phone_number" type="text" id="userphone"
				maxlength="11" placeholder="※ ex) 01012345678"/>
					<br><span class="point successPhoneChk"></span>
    				<input type="hidden" id="phoneDoubleChk"/>
				</td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td>
					<input class="join-btn" id="button1" type="submit" value="회원가입"/>
					<a href="/theaterindex"><input class="cancle-btn" type="button" value="취소"/></a>
				</td>
			</tr>
			<tr>
				<td>
				<hr>
					<p class="join-link">
						이미 회원이신가요? <a href="/user/loginPage" class="login-link">로그인</a>을 시도하세요!</p>
				</td>
			</tr>
		</table>
	</form>
	
    <script language="javascript">
    
    var codeCheck = 0;
    //---------------------
    var timer = null;
	var isRunning = false;
    //---------------------
        // 아이디 중복 확인
        $("#userid").blur(function(){
    		var login_id = $("#userid").val();
    		if(login_id == "" || login_id.length < 4){
    			$(".successIdChk").text("아이디를 최소 4자 ~ 최대 20자까지 입력해주세요. :)");
    			$(".successIdChk").css("color", "red");
    			$("#idDoubleChk").val("false");
    		}else {
    			$.ajax({
    				url : '${pageContext.request.contextPath}/user/idCheck?login_id='+ login_id,
    				type : 'post',
    				cache : false,
    				success : function(data) {
    					if (data == 0) {
    						$(".successIdChk").text("사용 가능한 아이디 입니다. :p");
    						$(".successIdChk").css("color", "green");
    						$("#idDoubleChk").val("true");
    					} else {
    						$(".successIdChk").text("사용중인 아이디 입니다. :)");
    						$(".successIdChk").css("color", "red");
    						$("#idDoubleChk").val("false");
    						return false;
    					}
    				}, error : function() {
    					console.log("실패");
    				}
    			});
        	}
        });
        
        // 비밀번호 일치 체크
         $("#userpass").blur(function(){
    		var password = $("#userpass").val();
    		if(password == "" || password.length < 4){
    			$(".pwChk1").text("비밀번호를 입력 해주세요. :)");
    			$(".pwChk1").css("color", "red");
    			$("#pwChk2").val("false");
    		} else {
    			$(".pwChk1").text("비밀번호를 입력 하였습니다. :p");
    			$(".pwChk1").css("color", "green");
    			$("#pwChk2").val("true");
    			
        		$("#userpasschk").blur(function(){
		    		if($("#userpasschk").val() == $("#userpass").val()){
		    			$(".successPwChk").text("비밀번호가 일치 합니다. :p");
		    			$(".successPwChk").css("color", "green");
		    			$("#pwDoubleChk").val("true");
		    		}else {
		    			$(".successPwChk").text("비밀번호가 일치 하지 않습니다. :)");
		    			$(".successPwChk").css("color", "red");
		    			$("#pwDoubleChk").val("false");
		    			return false;
		    		} 
        		});
    		}
        });

    	// 별명 중복 확인
    	$("#usernickname").blur(function(){
    		var nickname = $("#usernickname").val();
    		if(nickname == "" || nickname.length < 2){
    			$(".successNickNameChk").text("별명은 2자 이상 8자 이하로 설정해주세요 :)");
    			$(".successNickNameChk").css("color", "red");
    			$("#nickNameDoubleChk").val("false");
    		}else {
    			$.ajax({
    				url : '${pageContext.request.contextPath}/user/nickNameCheck?nickname='+ nickname,
    				type : 'post',
    				cache : false,
    				success : function(data) {
    					if (data == 0) {
    						$(".successNickNameChk").text("사용 가능한 별명 입니다. :p");
    						$(".successNickNameChk").css("color", "green");
    						$("#nickNameDoubleChk").val("true");
    					} else {
    						$(".successNickNameChk").text("사용중인 별명 입니다 :)");
    						$(".successNickNameChk").css("color", "red");
    						$("#nickNameDoubleChk").val("false");
    					}
    				}, error : function() {
    					console.log("실패");
    				}
    			});
        	}
        });
        
        // 이름 체크
        $("#username").blur(function(){
	   		var name = $("#username").val();
	   		
	   		if(name == "" || name.length < 2){
	   			$(".successNameChk").text("이름을 입력 해주세요. :)");
	   			$(".successNameChk").css("color", "red");
	   			$("#nameDoubleChk").val("false");
	   		} else {
	   			$(".successNameChk").text("이름을 입력 하였습니다. :p");
	   			$(".successNameChk").css("color", "green");
	   			$("#nameDoubleChk").val("true");
			}
    	});
    	
        // 이메일 인증
          $("#mail-Check-Btn").click(function() {
        	
    		const email = $("#userEmail1").val() + $("#userEmail2").val(); // 이메일 주소값 얻어오기!
    		console.log("완성된 이메일 : " + email); // 이메일 오는지 확인
    		const checkInput = $(".mail-check-input") // 인증번호 입력하는곳
    		
    		$.ajax({
    			type : "get",
    			url : '<c:url value ="/user/mailCheck?email="/>'+ email, // GET방식이라 Url 뒤에 email을 붙힐수있다.
    			success : function (data) {
    				console.log("data : " +  data);
    				checkInput.attr("disabled",false);
    				code = data;
    				const str = '<input type="hidden" name="email" value='+email+' >';
    				$(".input-group").append(str);
    				alert("인증번호가 전송되었습니다.")
    			}			
    		}); // end ajax
    		
	    	var display = $('.time');
   			var leftSec = 180;
    			
   	    	// 남은 시간
   	    	// 이미 타이머가 작동중이면 중지
   	    	if (isRunning){
   	    		clearInterval(timer);
   	    		display.html("");
   	    		startTimer(leftSec, display);
   	    	} else {
   	    		startTimer(leftSec, display);
   	    	}
    		
    	}); // end send email  
        
		function startTimer(count, display) {
            
    		var minutes, seconds;
            timer = setInterval(function () {
	            minutes = parseInt(count / 60, 10);
	            seconds = parseInt(count % 60, 10);
	     
	            minutes = minutes < 10 ? "0" + minutes : minutes;
	            seconds = seconds < 10 ? "0" + seconds : seconds;
	     
	            display.html(minutes + ":" + seconds);
	            display.css("color","red");
	            display.css("font-size","10px");
	     
	            // 타이머 끝
	            if (--count == 0) {
		    	     clearInterval(timer);
		    	     display.html("인증 시간을 초과하였습니다. :)");
		    	     display.css("color","red");
		             display.css("font-size","10px");
		             codeCheck = 0;
		             console.log(codeCheck);
		    	     $(".mail-check-input").focus();
		    	     $(".mail-check-input").val("");
	    	    	 $(".mail-check-input").attr("disabled",true);
	    	    	 $("#mail-Check-Btn").attr("disabled",false);
		    	     isRunning = false;
	            }
       		}, 1000);
            isRunning = true;
		}
   		
    	// 인증번호 비교 
    	// change -> input에 들어있는 값 전환
      	$(".mail-check-input").change(function () {
    		const inputCode = $(this).val();
    		const $resultMsg = $("#mail-check-warn");
    		
    		if(inputCode === code){
    			$resultMsg.html("인증번호가 일치 합니다. :p");
    			$resultMsg.css("color","green");
    			$resultMsg.css("font-size","10px");
    			$("#mail-Check-Btn").attr("disabled",true);
    			$("#userEmail1").attr("readonly",true);
    			$("#userEmail2").attr("readonly",true);
    			$("#userEmail2").attr("onFocus", "this.initialSelect = this.selectedIndex");
    	        $("#userEmail2").attr("onChange", "this.selectedIndex = this.initialSelect");
    	        
    	        codeCheck = 1;
    		}else{
    			$resultMsg.html("인증번호가 불일치 합니다. 다시 확인해주세요!. :)");
    			$resultMsg.css("color","red");
    			$resultMsg.css("font-size","10px");
   				$("#mail-Check-Btn").attr("disabled",false); // 인증번호랑 다를 때 
    			codeCheck = 0;
    		}
    	});  
    	
    	// 이메일 중복검사
     	$("#userEmail1").blur(function(){
    		var emailCh = $("#userEmail1").val();
			if(emailCh == "") {
				$(".successEmailChk").text("이메일을 입력하세요. :)");
    			$(".successEmailChk").css("color", "red");
				$("#emailDoubleChk").val("false");
			} else {
	    		var userEmail = emailCh + $("#userEmail2").val();
				$.ajax({
					type : 'post',
					url : '${pageContext.request.contextPath}/user/emailCheck?email='+ userEmail,
					success : function(data) {
						if (data == 0) {
							$(".successEmailChk").text("사용 가능한 이메일 입니다. :p");
							$(".successEmailChk").css("color", "green");
							$("#emailDoubleChk").val("true");
						} else {
							$(".successEmailChk").text("사용중인 이메일 입니다 :)");
							$(".successEmailChk").css("color", "red");
							$("#emailDoubleChk").val("false");
						}
					}, error : function() {
						console.log("실패");
					}
				});
			}
    	});
        
        // 전화번호 체크
        $("#userphone").blur(function(){
	   		var phone_number = $("#userphone").val();
	   		if(phone_number == "" || phone_number.length < 9){
	   			$(".successPhoneChk").text("전화번호를 입력해주세요. :)");
	   			$(".successPhoneChk").css("color", "red");
	   			$("#phoneDoubleChk").val("false");
	   		} else {
	   			$(".successPhoneChk").text("전화번호를 입력 하였습니다. :p");
	   			$(".successPhoneChk").css("color", "green");
	   			$("#phoneDoubleChk").val("true");
			}
        });
        
        // 최종 가입 버튼 클릭시 각 부분별 입력값 맞는지 확인
        $("#button1").click(function(){
        	if(
     			$("#idDoubleChk").val() == "true" 
        		&& $("#pwDoubleChk").val() == "true"
        		&& $("#nickNameDoubleChk").val() == "true" 
        		&& $("#nameDoubleChk").val() == "true" 
        		&& $("#emailDoubleChk").val() == "true"
        		&& codeCheck == 1
        		&& $("#phoneDoubleChk").val() == "true"
        	) {
        		alert($('#userid').val()+"님 환영합니다. :)");
        	} else {
        		alert("회원가입을 완료할 수 없습니다. 다시 한번 확인해 주십시오. :)");
    	    	if($("#idDoubleChk").val() != "true"){
    	    		$(".successIdChk").text("아이디를 입력 해주세요. :)");
    				$(".successIdChk").css("color", "red");
    	    	}
    	    	if($("#pwDoubleChk").val() != "true"){
    	    		$(".successPwChk").text("비밀번호가 일치하지 않습니다. :)");
    				$(".successPwChk").css("color", "red");
    	    	}
        		if($("#nickNameDoubleChk").val() != "true"){
    	    		$(".successNickNameChk").text("별명을 입력 해주세요. :)");
    				$(".successNickNameChk").css("color", "red");
    	    	}
        		if($("#nameDoubleChk").val() != "true"){
    	    		$(".successNameChk").text("이름을 입력 해주세요. :)");
    				$(".successNameChk").css("color", "red");
    	    	}
        		if($("#emailDoubleChk").val() != "true"){
    	    		$(".successEmailChk").text("이메일을 입력 해주세요. :)");
    				$(".successEmailChk").css("color", "red");
    	    	}
        		if(codeCheck != 1) {
        			alert("인증번호를 확인해주세요. :)");
            	}
        		if($("#phoneDoubleChk").val() != "true"){
    	    		$(".successPhoneChk").text("전화번호를 입력 해주세요 :)");
    				$(".successPhoneChk").css("color", "red");
    	    	}
    	    	return false;
        	}
        });
    </script>
</body>
</html>