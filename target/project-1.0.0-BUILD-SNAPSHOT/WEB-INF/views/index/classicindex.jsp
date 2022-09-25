<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	 <title>Articket</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${path}resources/logo.png" />
        <!-- Bootstrap icons-->
        <link href="${path}https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${path}/resources/css/index/index.css" rel="stylesheet" />
 		
 		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>
<div class="container-fluid">
        
        <!-- Header-->
        <%@include file="../includes/header.jsp" %>

        <nav class="bg-dark py-5">
            <div class="container lg-12">
                <div class="text-center text-white">
                    <div class="windowcon">
                        <div class="container-1">
                            <img src="resources/img/index/img_01.jpg">
                            <img src="resources/img/index/img_02.jpg">
                            <img src="resources/img/index/img_03.jpg">
                            <img src="resources/img/index/img_04.jpg">
                            <img src="resources/img/index/img_05.jpg">
                            <img src="resources/img/index/img_01.jpg">                
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        </div>
        <!-- Section-->
        <section class="py-5-1">
            <div class="container px-7 px-lg-1 mt-2">
                <div class="row gx-2 gx-lg-2 row-cols-1 row-cols-md-3 row-cols-xl-5 justify-content-center" style="padding-bottom: 1.7%;">
                    <div class="col mb-5" style="padding-right: 1%;">
                    <a href="<c:url value='/classicdetail?rnum=0'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster0" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm0"></span></h6>
                                        
                                    </div>
                                </div>
                            </div>
                            </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=1'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster1" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm1"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=2'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster2" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm2"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=3'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster3" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm3"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=4'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster4" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm4"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=5'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster5" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm5"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=6'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster6" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm6"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=7'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster7" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm7"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=8'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster8" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm8"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=9'/>">
                            <div class="card h-100">
                               <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster9" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm9"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=10'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster10" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm10"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=11'/>">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster11" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm11"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=12'/>">
                            <div class="card h-100">
                               <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster12" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm12"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=13'/>">
                            <div class="card h-100">
                                 <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster13" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm13"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col mb-5" style="padding-right: 1%;">
                        <a href="<c:url value='/classicdetail?rnum=14'/>">
                            <div class="card h-100">
                               <!-- Product image-->
                                <img class="card-img-top card h-100:hover .jb-c" id ="poster14" src="">
                                <img class="card-img-top jb-c" src="resources/img/index/menu-mouse-over1.PNG" alt="">
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h6 class="fw-bolder"><span id ="prfnm14"></span></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file="../includes/footer.jsp" %>
        
          <script>
        $(document).ready(function(){
            var responseMessage = "<c:out value="${msg}" />";
            if(responseMessage != ""){
                alert(responseMessage)
            }
        });

        </script>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/index/classic_scripts.js"></script>

</body>
</html>