<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review & Preview</title>
<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${path}resources/logo.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="${path}/resources/css/board/board.css" rel="stylesheet" />
</head>
<body>
<%@include file="../includes/header.jsp" %>
   
	<div class="row" style="margin-bottom: 6%;">
		<div class="col-1"></div>
		<div class="col-10" id="board-line">
			
			<div style="margin-top:10px; height:500px;border:1px;">
					<div id="dynamic_table">
					<h1>Review & Preview</h1>
						<table class="table table-hover" style="margin-top:10px;width:100%;">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
							<c:forEach items="${list }" var="list">
							<tr>
								<td><fmt:parseNumber var="percent" value="${list.ROWNUM }" integerOnly="true" />${percent}</td>
								<input type="hidden" name="boardId" value= "${list.id}">
								<td><a id="viewCnt" style="text-decoration: none; color: black;" href="/boardDetail?boardId=${list.id}"><span>${list.title }</span></a></td>
								<td id="resultCnt" value="${list.view }">${list.view }</td>
								<td>${list.nickname }</td>
								<td><fmt:formatDate value="${list.date_created }" pattern="yyyy.MM.dd" /></td>
							</tr>
							</c:forEach>
						</table>
						<div class="col-1"></div>
						<div class="row" style="padding-top: 1%;">
							<div class="col-2"></div>
							<div class="col-6">
								<ul class="pagination" style="border: 1px ;justify-content: center;"}>
									<c:if test="${pageMaker.prev}">
										<li class="page-item">
										  <a class="page-link" href="/board${pageMaker.makeQuery(pageMaker.startPage-1) }" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
										  </a>
										</li>
									</c:if>
									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
										<li
											<c:out value="${pageMaker.cri.page == idx? 'class=active ':' class=page-item'}"/>>
											<a href="/board${pageMaker.makeQuery(idx) }" class="page-link">${idx}</a>
										</li>
									</c:forEach>
									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<li class="page-item">
										  <a class="page-link" href="/board${pageMaker.makeQuery(pageMaker.endPage+1)}" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
										  </a>
										</li>
									</c:if>
								</ul>
							</div>
							<div class="col-2">
								<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
								<button type="button" onclick="location.href='boardWrite'" class="btn btn-outline-secondary" for="btn-check-2-outlined" >글쓰기</button>
							</div>
							<div class="col-2"></div>
						</div>
					</div>
			</div>
		</div>
	</div>
<%@include file="../includes/footer.jsp" %>
</body>
</html>