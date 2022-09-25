<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>
      <meta charset="UTF-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>정보 수정</title>
      <link href="${path}/resources/css/mypage/edit/edit.css" rel="stylesheet"/>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!--     <script type="text/javascript">
         /* history.replaceState({}, null, location.pathname); */
    </script> -->
         <script type="text/javascript">
         $(document).ready(function(){
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
            
/*          // 별명 중복 확인
           $("#nick-btn").click(function(){
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
                          data = 1;
                       } else {
                          $(".successNickNameChk").text("사용중인 별명 입니다 :)");
                          $(".successNickNameChk").css("color", "red");
                          $("#nickNameDoubleChk").val("false");
                          data = 0;
                       }
                    }, error : function() {
                       console.log("실패");
                    }
                 });
               }
            }); */
            
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
            
            // 최종 수정 버튼 클릭

            
           $("#button1").click(function(){
               if(
                   $("#pwDoubleChk").val() == "true"
                   && $("#phoneDoubleChk").val() == "true"
                ) {
                  alert("정보가 수정되었습니다. :p");
                } else {
                   alert("수정을 완료할 수 없습니다. 다시 한번 확인해 주십시오. :)");
                    if($("#pwDoubleChk").val() != "true"){
                      $(".successPwChk").text("비밀번호가 일치하지 않습니다. :)");
                     $(".successPwChk").css("color", "red");
                  }
                    if($("#phoneDoubleChk").val() != "true"){
                    $(".successPhoneChk").text("전화번호를 입력 해주세요 :)");
                   $(".successPhoneChk").css("color", "red");
                 }
                  return false;
               }   
         });   
           

         });

         </script>
</head>

<body>
   <%@include file="../includes/header.jsp" %>
    <form action="/user/edit" method="post" id="form">
       <table>
         <c:if test="${login_id != null }">
         <tr>
            <th><h1 class="main-title">정보 수정</h1></th>
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
                 <input class="login-input" type="text" name="login_id" value="${userEdit.login_id}" readonly>
            </td>
         </tr>
         <tr>
            <td class="pass-table">
               <label class="font-color">*&nbsp;</label><label for="userpass">비밀번호</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input class="pass-input" type="password" id="userpass" name="password" 
                  required maxlength="60" autocomplete="off" value="${userEdit.password}">
                  <br><span class="point pwChk1"></span>
               <input type="hidden" id="pwChk2"/>
            </td>
         </tr>
         <tr>
            <td class="passChk-table">
               <label class="font-color">*&nbsp;</label><label for="userpasschk">비밀번호 확인</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input name="password_check" class="passcheck-input" type="password" id="userpasschk" 
                  required maxlength="60" autocomplete="off" value="${userEdit.password}">
                  <br><span class="point successPwChk"></span>
               <input type="hidden" id="pwDoubleChk"/>
            </td>
         </tr>
         <tr>
            <td class="nick-table">
            <!-- <label class="font-color">*&nbsp; </label> --><label for="usernickname">별명</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input class="nickname-input" type="text" name="nickname" id="usernickname" 
                  required maxlength="8" autofocus value="${userEdit.nickname}" readonly/>
                 <!--  <button class="nick-btn" type="button" id="nick-btn">중복체크</button> -->
                  <br><span class="point successNickNameChk"></span>
                <input type="hidden" id="nickNameDoubleChk"/>
            </td>
         </tr>
         <tr>
            <td class="name-table">
               <label>이름</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input class="name-input" type="text" name="name" value="${userEdit.name}" readonly>
            </td>
         </tr>
         <tr>
            <td class="email-table">
               <label>이메일</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input class="email-input" type="text" id="email" name="email" value="${userEdit.email}" readonly>
            </td>
         </tr>
         <tr>
            <td class="phone-table">
               <label class="font-color">*&nbsp;</label><label for="userphone">전화번호</label>
            </td>
         </tr>
         <tr>
            <td>
                  <input class="phone-input" type="text" name="phone_number" id="userphone"
                  maxlength="11" value="${userEdit.phone_number}">
                  <br><span class="point successPhoneChk"></span>
                <input type="hidden" id="phoneDoubleChk"/>
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
                     <button class="edit-btn" id="button1" type="submit">수정</button>
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