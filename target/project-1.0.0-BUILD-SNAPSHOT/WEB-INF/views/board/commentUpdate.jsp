<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDetail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="${path}/resources/css/board/board.css" rel="stylesheet" />
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>

<body>
<%@include file="../includes/header.jsp" %>
<div class="row" style="text-align: center; margin-top: 10%;">
		<div id="root"  style="margin-bottom: 22%;">
			<div class="boardStyle">
					<div id="dynamic_table">
			<section id="container">
				<form role="form" method="post" autocomplete="off" action="/comment/commentUpdate">
					<input type="hidden" name="post_id" value="${readComment.post_id}" readonly="readonly"/>
					<input type="hidden" id="id" name="id" value="${readComment.id}"  readonly="readonly"/>
					<div style="text-align: center;">
						<label for="content">댓글 내용 :&nbsp;&nbsp;</label><input type="text" id="content" name="content" value="${readComment.content}"/>
					</div>
					<br><br>
					<div>
						<button type="submit">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			</div></div>
		</div>
	</div>
<%@include file="../includes/footer.jsp" %>
</body>
</html>