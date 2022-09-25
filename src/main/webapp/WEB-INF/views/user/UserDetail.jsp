<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link href="${path}/resources/css/mypage/mypage.css" rel="stylesheet"/>
<head>
   <meta charset="UTF-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>My Page</title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script type="text/javascript">
      /* history.replaceState({}, null, location.pathname); */      // 쿼리스트링 파라미터값 주소 없애기. */
   </script>
   <script type="text/javascript">
   $(document).ready(function(){
      $("#delete-user").on("click", function(){
           var result = confirm("회원 탈퇴를 하시겠습니까?");
           if(result) {
               alert("탈퇴 처리 되었습니다.");
               return location.href='/user/delete?id=${userDetail.login_id}';
           } else {
              return;
           }
      });
   });
   </script>
</head>
<body>
   <%@include file="../includes/header.jsp" %>
   <form id="form" method="post">
      <table>
         <c:if test="${login_id != null }">
         <tr>
            <th><h1 class="main-title">My Page</h1></th>
         </tr>
         <tr>
            <td><br></td>
         </tr>
         <tr>
            <td><br></td>
         </tr>
         <tr>
            <td class="id-table">
               <label>아이디</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="login-input" type="text" name="login_id" value="${userDetail.login_id}" readonly>
            </td>
         </tr>
         <tr>
            <td class="pass-table">
               <label>비밀번호</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="pass-input" type="password" name="password" value="${userDetail.password}" readonly>
            </td>
         </tr>
         <tr>
            <td class="nick-table">
               <label>별명</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="nickname-input" type="text" name="nickname" value="${userDetail.nickname}" readonly>
            </td>
         </tr>
         <tr>
            <td class="name-table">
               <label>이름</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="name-input" type="text" name="name" value="${userDetail.name}" readonly>
            </td>
         </tr>
         <tr>
            <td class="email-table">
               <label>이메일</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="email-input" type="text" name="email" value="${userDetail.email}" readonly>
            </td>
         </tr>
         <tr>
            <td class="phone-table">
               <label>전화번호</label>
            </td>
         </tr>
         <tr>
            <td>
                 <input class="phone-input" type="text" name="phone_number" value="${userDetail.phone_number}" readonly>
            </td>
         </tr>
         <tr>
            <td><br></td>
         </tr>
         <tr>
            <td><br></td>
         </tr>
         <tr>
            <td>
                <div align="center">
                    <button class="edit-btn" type="button" onclick="location.href='/user/editPage?nickname=${userDetail.nickname}'">수정</button>
                    <button class="delete-btn" type="button" id="delete-user">탈퇴</button>
                    <button class="back-btn" type="button" onclick="history.back()">뒤로</button>
                </div>
            </td>
         </tr>
         </c:if>
         <c:if test="${login_id == null }">
            <div class="text-center">
               <a class="title" href="/index">
                  <span class="title1">Art</span><span class="title2">icket</span>
               </a>
            </div>
            <br><br>
            <div>
               <h3 class="text-center">회원 정보 수정 페이지 입니다. :p</h3>
               <p class="text-center">
                  <span>로그인 후 사용해주시길 바랍니다. :)</span>
               </p>
            </div>
            <br><br>
            <div class="text-center">
               <button class="edit-btn1" type="button" onclick="location.href='/user/loginPage'">로그인 하기</button>
            </div>
         </c:if>
      </table>
   </form>
   <%@include file="../includes/footer.jsp" %>
</body>
</html>