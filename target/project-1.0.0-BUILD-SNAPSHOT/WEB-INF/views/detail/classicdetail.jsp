<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>   
	
    <title>Articket</title>
<!--     <meta content="" name="description">
    <meta content="" name="keywords"> -->
  
    <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${path}resources/logo.png" />
  
    <!-- Google Fonts -->
    <link rel="preconnect" href="${path}https://fonts.googleapis.com">
    <link rel="preconnect" href="${path}https://fonts.gstatic.com" >
    <link href="${path}https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
  
    <!-- Vendor CSS Files -->
    <link href="${path}resources/vendor/detail/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}resources/vendor/detail/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="${path}resources/vendor/detail/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="${path}resources/vendor/detail/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="${path}resources/vendor/detail/aos/aos.css" rel="stylesheet">

    <link rel="stylesheet" href="${path}https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  
    <!-- Template Main CSS File -->
    <link href="${path}resources/css/detail/main.css" rel="stylesheet">
    
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

  
    <!-- =======================================================
    * Template Name: PhotoFolio - v1.0.0
    * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
  <!-- Header-->
        <%@include file="../includes/header.jsp" %>



  <!-- <main id="main" data-aos="fade" data-aos-delay="1500"> -->
    <main id="main">
    <!-- ======= End Page Header ======= -->
    <div class="page-header d-flex align-items-center">
      <div class="container position-relative">
        <div class="row d-flex justify-content-center">
          <div class="col-xs-6 text-center">
            <h2 id="title">[<span id ="cate"></span>]<span id ="prfnm"></span></h2>
          </div>
        </div>
      </div>
    </div><!-- End Page Header -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row gy-4 justify-content-center">
          <div class="col-lg-3">
          
         <span id ="rnum" style="display:none;"></span><br>
            <img class="card-img-top" id ="poster" src="">
          </div>
          <div class="col-lg-5 content">
            
            <div class="row">
              <div class="col-lg-12">
                <ul>
                  <li><h2 id="address"><strong>장소:</strong> <span id ="prfplcnm"></span></h2></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>지   역: <span id ="area"></span></strong> </li>
                  <li><i class="bi bi-chevron-right"></i> <strong>공연기간:</strong> <span id ="prfpd"></span></li>
                    
                                <nav id="navbar" class="navbar navbar-align">
                                <ul>
                                    <li class="dropdown" ><span>전체가격보기</span> <i class="bi bi-chevron-down dropdown-indicator"></i>
                                        <ul>
                                          <li class="mouse-pointer"> S석 : 69,000원</li>
                                          <li class="mouse-pointer"> R석 : 59,000원</li>
                                          <li class="mouse-pointer"> A석 : 49,000원</li>
                                          <li class="mouse-pointer"> B석 : 39,000원</li>
                                          <li class="mouse-pointer"> C석 : 29,000원</li>
                                         
                                        </ul>
                                    </li>
                                 </ul>
                                 </nav>
                </ul>
              </div>
              
              
              <div class="col-lg-12">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>추가정보:</strong> <span></span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>추가정보:</strong> <span></span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>추가정보:</strong> <span></span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>추가정보:</strong> <span></span></li>
                </ul>
              </div>

              


                <div class="col-lg-12">
                    <div class="scroll-container">
                            
                            <a id="setUrl" href="" class="cta-btn">예 매 하 기</a>
                            <br>
                            <br>
                            <a class="cta-btn" href="#section2">평점/리뷰</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    </section>

<!--------------- nav tap start ---------------->
    <div class="container nav-tabs">
        <div class="row">
          <div class="col">
              <ul class="nav nav-tabs">
                <li class="nav-item">
                  <a class="nav-link active" data-toggle="tab" href="#qwe">공연정보</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#asd">부가정보</a>
                </li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane fade show active" id="qwe">
                    <br>
                  <p> * 공연시간 정보 <br>
                    예매가능시간: 관람 1분 전까지 <br>
                    
                    평일 14:30, 17:00 <br>
                    주말 및 공휴일 13:50, 16:00, 18:10 <br>
                    *8월15일 13:50, 16:00, 18:10 <br>
                    <br>
                    * 추석 연휴 <br>
                    - 9월 9일(금) 13시 50분, 16시 <br>
                    - 9월 10일(토) 16시, 18시 10분 <br>
                    - 9월 11일(일) 13시 50분, 16시, 18시 10분 <br>
                    - 9월 12일(월) 13시 50분, 16시, 18시 10분</p> 
                </div>
                <div class="tab-pane fade" id="asd">
                  <p><div class="moreInfoContainer"><h4 class="moreInfoTitle">상품관련 정보</h4><table class="moreInfoTable"><caption>상품관련정보 안내</caption><colgroup><col class="col1"><col class="col2"><col class="col3"><col class="col4"></colgroup><tbody><tr><th>주최/기획</th><td>주식회사 더 웨이브</td><th>고객문의</th><td>02-6954-0772</td></tr><tr><th>공연시간</th><td>90 분</td><th>관람등급</th><td>만 13세이상</td></tr><tr><th>주연</th><td><span class="moreInfoCast">김민국, 김서준, 오근욱, 고예현, 류시경, 송미진, 김진우, 이형오, 함요한</span></td><th>공연장소</th><td>대학로 연극플레이스 혜화</td></tr><tr><th>예매수수료</th><td>장당 500원</td><th>배송료</th><td>현장수령 무료 (배송불가)</td></tr><tr><th>유효기간/이용조건</th><td colspan="3">2022.08.13 ~ 오픈런 예매한 공연 날짜, 회차에 한해 이용가능</td></tr><tr><th>예매취소조건</th><td colspan="3">취소일자에 따라서 아래와 같이 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매
                    수수료도 환불됩니다.(취소기한 내에 한함)<table class="cancleGuide"><colgroup><col><col></colgroup><caption>취소일에 따른 취소수수료안내</caption><thead><tr><th>취소일</th><th>취소수수료</th></tr></thead><tbody><tr><td>예매 후 7일 이내</td><td class="right">없음</td></tr><tr><td>예매 후 8일~관람일 10일전까지</td><td class="right">장당 2,000원(티켓금액의 10%한도)</td></tr><tr><td>관람일 9일전~7일전까지</td><td class="right">티켓금액의 10%</td></tr><tr><td>관람일 6일전~3일전까지</td><td class="right">티켓금액의 20%</td></tr><tr><td>관람일 2일전~1일전까지</td><td class="right">티켓금액의 30%</td></tr></tbody></table></td></tr><tr><th>취소환불방법</th><td colspan="3"><ul class="moreInfoList"><li>My티켓 &gt; 예매/취소내역에서 직접 취소 또는 고객센터 (1234-5678)를 통해서 예매를 취소할 수 있습니다.</li><li>티켓이 배송된 이후에는 인터넷 취소가 안되며, 취소마감 시간 이전에 티켓이 인터파크 티켓 고객센터로 반송되어야 취소 가능합니다. 취소수수료는 도착일자 기준으로 부과되며, 배송료는 환불되지 않습니다.</li></ul></td></tr><tr><th>배송티켓 안내</th><td colspan="3"><ul class="moreInfoList"><li>티켓 배송 (배송상태 : 배송 준비중 이후) 후에는 주소 변경이 불가합니다.</li><li>부득이하게 주소 변경이 필요하신 경우 각 배송사에 수취 거절 요청 후,<br>고객센터(1234-5678)로 재배송 신청할 수 있습니다.(배송비 3,000원 추가 부과)</li></ul></td></tr><tr><th>모바일티켓 안내</th><td colspan="3"><ul class="moreInfoList"><li><b>티켓수령방법을 모바일티켓으로 선택 시 인터파크 앱, 인터파크 티켓 앱에서 즉시 이용 가능합니다.</b></li><li><b>모바일티켓으로 예매하실 경우 종이 티켓은 제공되지 않습니다.</b></li><li>결제완료(입금완료)후 모바일티켓을 확인할 수 있습니다.</li><li>안드로이드 버전 4.0이상만 사용 가능, iOS 7 이상만 사용 가능합니다.</li><li><b>스포츠 시즌권 구매고객이거나 인터파크 외 예매처에서 예매한 모바일티켓은 별도의 모바일티켓 앱을 통해서만 이용 가능합니다.</b></li></ul></td></tr></tbody></table><div class="escrowGuide"><strong class="escrowTitle">㈜연극조와 안전결제시스템 <span class="is-light">(Escrow System, 에스크로)</span> 안내</strong><p class="escrowText">연극조와^ㅇ^의 모든 상품은 판매자 및 결제 수단의 구분 없이 회원님들의 구매안전을 위해 안전결제시스템을 도입하여 서비스하고 있습니다.<br>결제대금예치업 등록 : 02-123-4567 <a href="//www.fss.or.kr/kr/bbs/iframe/view.jsp?bbsid=1207404527596&amp;idx=1648803004254&amp;num=339" class="escrowLink" target="_blank">서비스 가입사실 확인</a></p></div>
                </div>
                <div class="tab-pane fade" id="zxc">
                  <p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque commodo consectetur faucibus. Aenean eget ultricies justo.</p>
                </div>
              </div>
          </div>
        </div>
      </div>
      </div>

      
<!--------------- End nav tap ---------------->

<div class="row gy-12 justify-content-center">
    <div class="col-lg-6">
    <img id ="main_poster" src="" style="height: 841px;">
    </div>
 
  
    <div id="section2">

    </div>

        

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">


        <div class="section-header">
            <div class="scroll-container">
  
                    <h2></h2>
                    <p>평점/리뷰</p>

            </div>
        </div>
        


        <!-- 별점 기능 ★★★★★★★★★★★★-->
 	<form class="mb-3" name="myform" id="myform" > 
        <fieldset>
            <span class="text-bold">별점을 선택해주세요</span>
            <input type="radio" name="reviewStar" value="5" id="rate1"><label
                for="rate1">★</label>
            <input type="radio" name="reviewStar" value="4" id="rate2"><label
                for="rate2">★</label>
            <input type="radio" name="reviewStar" value="3" id="rate3"><label
                for="rate3">★</label>
            <input type="radio" name="reviewStar" value="2" id="rate4"><label
                for="rate4">★</label>
            <input type="radio" name="reviewStar" value="1" id="rate5"><label
                for="rate5">★</label>
        </fieldset>
	    <div>
		<textarea class="col-auto form-control" id="reviewContents" name="comment"
				  placeholder="평점과 리뷰를 남겨주세요."></textarea>
	    </div>
        <input type="submit" value="평점평가">
        <input id="btn_test"type="button" value="동적html그리기">
    </form>	

         <!-- 별점 기능 끝 ★★★★★★★★★★★★-->

        <div class="slides-3 swiper">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                    코믹로맨스극으로 너무 재미있어요!!!!!!!!
                    대학로 연극플레이스 혜화에서 연극 <가장 보통의 연예>를 봤다.
                    코믹로맨스극으로 부담 없이 웃고 즐길 수 있는 연극으로 추천 드리고 싶은 작품이다.
                </p>
                <div class="profile mt-auto">
                  <img src="resources/img/detail/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>승현맘</h3>
                  <h4>zdc2***</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                    재밌게 잘 봤습니다.
                    그냥 오랜만에 연극 한 편 보려 왔는데,
                    모두 잘 해 주셔서 공감되었어요.

                    그리고 멀티 분이 특히나 잘 해주셨어요 ^^
                </p>
                <div class="profile mt-auto">
                  <img src="resources/img/detail/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                  <h3>내꿈을펼쳐라</h3>
                  <h4>rrqq***</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                    음.. 연기는 좋은데 극본이 너무 약해요
                    스토리가 너무 약합니다.. 벽보다 술먹고 한탄하고의 반복... 연기는 좋았어요..!
                </p>
                <div class="profile mt-auto">
                  <img src="resources/img/detail/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                  <h3>프로불편러</h3>
                  <h4>ljk6***</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                    가장 보통의 연애
                    연애의 감정을 잊을 때 쯤 보면 살짝 설레일 것 같은 연애세포를 살리는 연극입니다.
                    재밌게 봤어요.
                </p>
                <div class="profile mt-auto">
                  <img src="resources/img/detail/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                  <h3>연애하고싶다</h3>
                  <h4>phehw***</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                    활짝 문 열어 준 연극
                    사랑스러운 배우님들 애쓰셨어요♡
                </p>
                <div class="profile mt-auto">
                  <img src="resources/img/detail/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                  <h3>사랑꾼</h3>
                  <h4>hjinn***</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
</section>
</div>
    <!-- End Testimonials Section -->
  
  
  </main><!-- End #main -->


  	        <!-- Footer-->
        <%@include file="../includes/footer.jsp" %>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader">
    <div class="line"></div>
  </div>
  

  <!-- Vendor JS Files -->
  <script src="resources/vendor/detail/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/detail/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/detail/glightbox/js/glightbox.min.js"></script>
  <script src="resources/vendor/detail/aos/aos.js"></script>
  <script src="resources/vendor/detail/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/detail/classic.js"></script>
  

</body>
</html>