<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardUpdate</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="${path}/resources/css/board/board.css" rel="stylesheet" />
	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
</head>
<body>
<%@include file="../includes/header.jsp" %>
  <form action="/boardUpdate"  method="POST" id="form-con">
	<div class="row">
		<div class="col-1"></div>
		<div class="col-10" id="board-line">
			
			<div class="boardStyle">
					<div id="dynamic_table">
					<input type="hidden" name="boardId" style="width:90.5%; display:none;" value= "${list.id}">
						<table class="table table-hover" style="margin-top:10px;width:100%;">
							
                            <tr>
                                <th class="head-style">제목</th>
                                <td><input type="text" name="title" style="width:90.5%;" value= "${list.title }"></td>
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
                                <td><div id="editor">${list.content }</div><input type="hidden" name="content"></td>
                            </tr>
						</table>
					</div>
			
			</div>
		</div>
			
		<div class="col-1"></div>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8" style="text-align: center; display: inline; margin-bottom: 14%;">
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<input type="button" class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="myFunction()" value="등 록"></input>

				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<input type="button" class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="history.go(-1)" value="취 소"></input><br>
			</div>
		</div>
		
	</div>
 </form>


<script>
	  var quill = new Quill('#editor', {
	    theme: 'snow'
	  });
	</script>
		<script type="text/javascript">
		function myFunction() {
			var content1 = $(".ql-editor").html();
			$('input[name=content]').attr('value',content1);
			$('#form-con').submit();
		}
	</script>

 <%@include file="../includes/footer.jsp" %>
</body>
</html>