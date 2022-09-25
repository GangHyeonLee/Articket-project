<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
String str = request.getParameter("param");
%>
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
   
	<div class="row">
		<div class="col-1"></div>
		<div class="col-10" id="height-line">
			
			<div class="boardStyle">
					<div id="dynamic_table">
							<table class="table table-hover">
	                            <tr>
	                                <th></th>
	                                <td style="text-align:center">게시판 글 보기<input type="hidden" value="${list.id }"/></td>
	                            </tr>
	                            <tr>
	                                <th class="head-style">제목</th>
	                                <!-- <td><input type="text"  style="width:90.5%;" value= ${list.subject }></td> -->
	                                <td >${list.title }</td>
	                            </tr>
	                            <tr>
	                                <th class="head-style">작성자</th>
	                                <td>${list.nickname }</td>
	                            </tr>
	                            <tr>
	                                <th class="head-style">작성일</th>
	                                <td><fmt:formatDate value= "${list.date_created}" /></td>
	                            </tr>
	                            <tr>
	                                <th class="head-style">내용</th>
	                                <td>${list.content}</td>
	                            </tr>
	                           	<tr>
	                           		<th class="head-style">댓글<br>
		                           		<div>
		                           			<button class="reply-content-toggle" type="button">댓글 닫기</button>
		                           		</div>
	                           		</th>
										
	                           		<td>
	                           			<!-- 댓글 -->
										<div id="comment">
											<ol class="commentList">
												<c:forEach items="${commentList}" var="commentList">
												    <li>
												      <p>
													      작성자 : ${commentList.nickname} &nbsp;/&nbsp;
													      작성 날짜 :  <fmt:formatDate value="${commentList.date_created}" pattern="yyyy-MM-dd" />
													      &nbsp;&nbsp;
													      <button type="button" class="commentUpdateBtn" id="select-btn" data-id="${commentList.id }">수정</button>
														 <input type="hidden" value="${commentList.id }">
														 <input type="hidden" value="${commentList.content }">
													     <button type="button" class="commentDeleteBtn" id="select-btn"  data-id="${commentList.id }">삭제</button>
										              </p>
										              <p>내용 : ${commentList.content}</p>
										              <hr>
												     </li>
												 </c:forEach>   
											</ol>
										</div>
	                           		</td>
	                           	</tr>
	                           	<tr>
	                           		<th></th>
	                           		<td>
	                           			<ol class="comment-btn">
	                           				<li>
												<div>
													<c:if test="${nickname.id != null }">
														<form action="/comment/write" method="post">
															<input type="hidden" name="post_id"  value="${boardNo }"/>
															<input type="hidden" name="user_id" value="${nickname.id }" />
															<label>내용 : </label> <input class="input-write" type="text" name="content"/>
															<button class="write-btn" type="submit">댓글 작성</button>
														</form>
													</c:if>
												</div>
											</li>
										</ol>
									</td>
								</tr>
							</table>
					</div>
			</div>
		</div>
			
		<div class="col-1"></div>
		<div class="row" style="margin-bottom: 5%;">
			<div class="col-3"></div>
			<div class="col-6" id="btn">
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="location.href='board'">목 록</label>
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="location.href='/boardUpdate?boardId=${boardId}'">수 정</label>

				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="location.href='/delete?boardId=${boardId}'">삭 제</label>
				
			</div>
		</div>
</div>
<script>

	function searchParam(key){
		return new URLSearchParams(location.search).get(key);
	}

	$(document).ready(function(){
		$("#idUrl").val(searchParam('boardId'));
	});
	
	$(".reply-content-toggle").click(function() {
		var $wrap = $("#comment");
		if($wrap.is(":visible")) {
			$(this).text("댓글 열기");
			$wrap.stop().slideUp(0);
		}
		else {
			$(this).text("댓글 닫기");
			$wrap.stop().slideDown(0);
		}
	});
	
	//댓글 수정 View
	$(".commentUpdateBtn").on("click", function(){
		var a = $(this).next().val();
		var b = $(this).next().next().val();
		location.href = "/comment/commentUpdate?id="+a + "&content="+b;
	});
			
	//댓글 삭제 View
	$(".commentDeleteBtn").on("click", function(){
		var a = $(this).prev().prev().val();
		self.location = "/comment/commentDelete?id="+a;
	});


</script>
<%@include file="../includes/footer.jsp" %>
</body>
</html>