<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="${path}/resources/css/board/board.css" rel="stylesheet" />
	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
<%-- <%@ include file="../include/boardWrite.jsp" %> --%>
<link href="${path}/resources/css/board/board.css" rel="stylesheet" />
</head>
<body>
<%@include file="../includes/header.jsp" %>
  <form action="/boardWrite" method="POST" id="form-con">
	<div class="row">
		<div class="col-1"></div>
		<div class="col-10" id="board-line">
			
			<div class="boardStyle">
					<div id="dynamic_table">
						
						<input type="hidden" id="board_id" name="board_id" value=1>
						
						<input type="hidden" id="user_id" name="user_id" value="${user_id }"/>
						<input type="hidden" id="view" name="view" value=0 />
						<input type="hidden" id="privated" name="privated" value=0 />
						
						
						<table class="table table-hover" style="margin-top:10px; width:100%;">
                            <tr>
                                <th class="head-style">제목</th>
                                <td><input type="text" name="title" style="width:90.5%;"></td>
                            </tr>
                            <tr>
                                <th class="head-style">내용</th>
                                <td><div id="editor"></div><input type="hidden" name="content"></td>
                            </tr>
						</table>
					</div>
			
			</div>
		</div>
		<div class="col-1"></div>
		<div class="row" style="margin-bottom: 17%;">
			<div class="col-3"></div>
			<div class="col-6" id="btn">
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<input type="button" class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="myFunction()" value="등 록"></input>
				<!-- <label type="submit" class="btn btn-outline-secondary" for="btn-check-2-outlined">등 록</label> -->
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<input type="button" class="btn btn-outline-secondary" for="btn-check-2-outlined" onclick="history.go(-1)" value="취 소"></input><br>
			</div>
		</div>
	</div>
</form>


	<script>
	
		let checkId =  $("#changeTest").val();
		let selectBoxChange = function(value){
			if(checkId == "포스팅게시판"){
				$("#board_id").val(1);
			}else if(checkId == "Q&A게시판"){
				$("#board_id").val(2);
			}
			
		}
	</script>
	
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