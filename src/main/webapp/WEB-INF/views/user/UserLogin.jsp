<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Articket 로그인</title>
	<link href="${path}/resources/css/login/login.css" rel="stylesheet"/>

</head>
<body>

<%@include file="../includes/header.jsp" %>
<div class="container-fluid">
	<form id="login-form" action="/user/login" method="post">
		<table>
			<tr>
				<th><h1 class="main-title">로그인</h1></th>
			</tr>
			<tr>
				<td><input name="login_id" class="login-input" type="text" placeholder="아이디 입력" autofocus="autofocus"/></td>
			</tr>
			<tr>
				<td><input name="password" class="login-input" type="password" placeholder="비밀번호 입력"/></td>
			</tr>
			<tr>
				<td>
					<c:if test="${message == 'error' }">
						<div style="color:red;"> 존재하지 않는 유저입니다.
						</div>
						<br>
					</c:if>
					<c:if test="${message == 'error2' }">
						<div style="color:red;"> 아이디를 입력해 주세요.
						</div>
						<br>
					</c:if>
					<c:if test="${message == 'error3' }">
						<div style="color:red;"> 비밀번호를 입력해 주세요.
						</div>
						<br>
					</c:if>
				</td>
			</tr>
<!-- 			<tr>
				<td>
					<div align="left">
					<span class="login-remember-me-label-text">
						<input id="auto-login" name="auto_login" type="checkbox" value="auto-login"/>
						<label for="a">로그인 상태 유지하기</label>
					</span>
					</div>
				</td>
			</tr> -->
			<tr>
				<td>
					<input class="login-btn" type="submit" value="로그인"/>
				</td>
			</tr>
			<tr>
				<td>
					<div class="find-user">
						<!-- <hr class="hr-line" style="height: 1px;"> -->
						<a class="text-line" href="/user/findIdPage">
							<input class="find-btn" type="button" value="아이디 찾기"/>
						</a>
							<span style="margin: 10px;">  |  </span>
						<a href="/user/findPwPage">
							<input class="find-btn" type="button" value="비밀번호 찾기"/>
						</a>
						<!-- <hr class="hr-line" style="height: 1px;"> -->
					</div>
				</td>
			</tr>
			<tr>
				<td>
				<hr>
					<p class="join-link">
						계정이 없으신 가요? <a href="/user/joinPage" class="signup-link">회원가입</a>을 시도하세요!</p>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@include file="../includes/footer.jsp" %>
</body>
</html>