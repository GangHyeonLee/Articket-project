
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	 <title>결제완료</title>
	 <link href="${path}/resources/css/ticketing/close.css" rel="stylesheet"/>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	</head>



<body>
	<div class="modal">
	 <div class="modal_content" title="클릭하면 이전화면으로 돌아갑니다.">
	 	<div>
		 	<div class="result-payment">결제가 완료되었습니다.</div>
		 	<input class="back-btn mouse-pointer"  type="submit" onclick="history.go(-1)" value="돌아가기"></input>
	 	</div>
	 </div>
    </div>
    
    <script>
    $(document).ready(function(){
    $(".modal").fadeIn();
    });
    
    $(".modal_content").click(function() {
		$(".modal").fadeOut(history.go(-2));
		
	});
    </script>
    
	
	
    
    



</body>
</html>