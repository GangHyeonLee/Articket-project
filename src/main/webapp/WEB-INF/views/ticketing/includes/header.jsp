<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
   	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Header</title>
   	<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${path}resources/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="${path}https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${path}/resources/css/index/index.css" rel="stylesheet" />
   		<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
	<div class="container-fluid">
        <!-- Navigation-->
        <header class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container px-2 px-lg-7">
                <a class="navbar-brand" href="/theaterindex" style="color: #f67280;">Art<span style="color: black;">icket</span></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/theaterindex">연극</a></li>
                        <li class="nav-item"><a class="nav-link" href="/musicalindex">뮤지컬</a></li>
                        <li class="nav-item"><a class="nav-link" href="/classicindex">클래식</a></li>
                        <li class="nav-item"><a class="nav-link" href="/board">Review & Preview</a></li>
                    </ul>
                    <form style="margin-block-end: 0;">
                        <button class="login" style="font-family: inherit;">
                            <font style="vertical-align: inherit;">
                              <font style="vertical-align: inherit;">
                              	<c:if test="${login_id == null }">
	                                <a class="log-link" href="/user/loginPage" style="text-decoration: none; color: gray;">
	                              	 로그인 
	                                </a>
                                </c:if>
                              </font>
                            </font>
                        </button>
                    </form>
                    <form  style="padding-right: 2%; margin-block-end: 0;">
						<div class="loginmenu">
							<c:if test="${login_id != null }">
								<div>
									<a href="/user/detail?nickname=${nickname.nickname}" class="mainmenu">${nickname.nickname }</a> 님
									<input type="number" value="${nickname.id }" style="display: none;">
									<input type="text" value="${nickname.login_id }" style="display: none;">
								</div>
							</c:if>
						</div>
					</form>
					<form action="/user/logout" method="get" style="margin-block-end: 0;">
						<c:if test="${login_id != null }">
							<div>
								<button class="log-out">
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">로그아웃</font>
									</font>
								</button>
							</div>
						</c:if>
					</form>
                    <form style="padding-right: 1%; margin-block-end: 0;" action="/user/joinPage" method="post">
                        <c:if test="${login_id == null }">
                        <button class="sign-up">
                            <font style="vertical-align: inherit;">
                              <font style="vertical-align: inherit;">가입하기</font>
                            </font>
                          </button>
                        </c:if>
                    </form>
                </div>
            </div>
        </header>
        <!-- Header-->
     </div>   
</body>
</html>
