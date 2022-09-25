
$(document).ready(function(){
       	var ticketingData = '{\
"boxofs": {\
"boxof": [\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.12.17~2022.12.17",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "신세계와 함께하는 예술의전당 토요콘서트 (12월)",\
    "rnum": 1,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF198081_220914_113610.jpg",\
    "mt20id": "PF198081"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.11.19~2022.11.19",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "신세계와 함께하는 예술의전당 토요콘서트 (11월)",\
    "rnum": 2,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF198080_220914_113443.jpg",\
    "mt20id": "PF198080"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.11.15~2022.11.15",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "이고르 레비트 피아노 리사이틀",\
    "rnum": 3,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF198070_220914_110800.jpg",\
    "mt20id": "PF198070"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 4,\
    "prfpd": "2022.10.07~2022.10.09",\
    "cate": "클래식",\
    "prfplcnm": "세종문화회관 세종대극장",\
    "prfnm": "해리 포터와 아즈카반의 죄수™ 인 콘서트",\
    "rnum": 4,\
    "seatcnt": 3022,\
    "poster": "/upload/pfmPoster/PF_PF195255_220727_094226.jpg",\
    "mt20id": "PF195255"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.09.28~2022.09.28",\
    "cate": "클래식",\
    "prfplcnm": "마포아트센터 아트홀맥",\
    "prfnm": "제7회 M클래식축제, 서희태의 렉처콘서트: 동물의 사육제",\
    "rnum": 5,\
    "seatcnt": 733,\
    "poster": "/upload/pfmPoster/PF_PF196865_220823_132913.gif",\
    "mt20id": "PF196865"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 3,\
    "prfpd": "2022.10.02~2022.10.03",\
    "cate": "클래식",\
    "prfplcnm": "세종문화회관 세종대극장",\
    "prfnm": "디즈니 인 콘서트 [서울]",\
    "rnum": 6,\
    "seatcnt": 3022,\
    "poster": "/upload/pfmPoster/PF_PF197006_220826_094510.gif",\
    "mt20id": "PF197006"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.10.08~2022.10.08",\
    "cate": "클래식",\
    "prfplcnm": "용산전자랜드 랜드홀",\
    "prfnm": "유슬기 클래식 콘서트 ep1, 한 사람 한 사람의 눈을 마주하다",\
    "rnum": 7,\
    "seatcnt": 100,\
    "poster": "/upload/pfmPoster/PF_PF198093_220914_122237.gif",\
    "mt20id": "PF198093"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.10.08~2022.10.08",\
    "cate": "클래식",\
    "prfplcnm": "롯데콘서트홀 롯데콘서트홀",\
    "prfnm": "게임음악콘서트: GAME ON!",\
    "rnum": 8,\
    "seatcnt": 2036,\
    "poster": "/upload/pfmPoster/PF_PF195757_220804_123058.jpg",\
    "mt20id": "PF195757"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.09.13~2022.09.13",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "서울대학교 음악대학 가을콘서트",\
    "rnum": 9,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF196148_220811_141600.gif",\
    "mt20id": "PF196148"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.11.20~2022.11.20",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "지브리 페스티벌",\
    "rnum": 10,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF196677_220822_095921.jpg",\
    "mt20id": "PF196677"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.10.16~2022.10.16",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "손민수 피아노 리사이틀",\
    "rnum": 11,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF195361_220728_112349.jpg",\
    "mt20id": "PF195361"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.10.02~2022.10.02",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 IBK챔버홀",\
    "prfnm": "첼리스트 김대연 앨범 발매 기념 리사이틀",\
    "rnum": 12,\
    "seatcnt": 600,\
    "poster": "/upload/pfmPoster/PF_PF198051_220914_101128.jpg",\
    "mt20id": "PF198051"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.09.17~2022.09.17",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 리사이틀홀",\
    "prfnm": "오수안 귀국 바이올린 독주회",\
    "rnum": 13,\
    "seatcnt": 354,\
    "poster": "/upload/pfmPoster/PF_PF196925_220824_120829.gif",\
    "mt20id": "PF196925"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.12.16~2022.12.16",\
    "cate": "클래식",\
    "prfplcnm": "예술의전당 콘서트홀",\
    "prfnm": "파리나무십자가 소년합창단 특별초청공연 [서울]",\
    "rnum": 14,\
    "seatcnt": 2527,\
    "poster": "/upload/pfmPoster/PF_PF197797_220908_095315.jpg",\
    "mt20id": "PF197797"\
  },\
  {\
    "area": "서울",\
    "prfdtcnt": 1,\
    "prfpd": "2022.09.13~2022.09.13",\
    "cate": "클래식",\
    "prfplcnm": "세종문화회관 세종체임버홀",\
    "prfnm": "300 years!: between Then &amp; Now",\
    "rnum": 15,\
    "seatcnt": 443,\
    "poster": "/upload/pfmPoster/PF_PF197274_220830_135330.png",\
    "mt20id": "PF197274"\
  }\
]\
}\
}\
';
       	
       	var ticketingDataJson = JSON.parse(ticketingData);
      	
      	
      	function searchParam(key) {
      		  return new URLSearchParams(location.search).get(key);
      		};
      		
      		var i = searchParam('rnum');
		    	   var posterSrc = "https://kopis.or.kr" + ticketingDataJson.boxofs.boxof[i].poster;
					
					$("#rnum").text(ticketingDataJson.boxofs.boxof[i].rnum);
					$("#cate").text(ticketingDataJson.boxofs.boxof[i].cate);
					$("#prfnm").text(ticketingDataJson.boxofs.boxof[i].prfnm);
					$("#area").text(ticketingDataJson.boxofs.boxof[i].area);
					$("#prfplcnm").text(ticketingDataJson.boxofs.boxof[i].prfplcnm);
					$("#prfpd").text(ticketingDataJson.boxofs.boxof[i].prfpd);
					$("#poster").attr("src", posterSrc);
					$("#main_poster").attr("src", posterSrc);
		    	   
					$("#setUrl").attr("href", "classicticketing?rnum=" + i);
    });

  




//------------------------------------------------------------- End API ------------------------------------------------------------------



/**
* Template Name: PhotoFolio - v1.0.0
* Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/
document.addEventListener('DOMContentLoaded', () => {
  "use strict";

  /**
   * Preloader
   */
  const preloader = document.querySelector('#preloader');
  if (preloader) {
    window.addEventListener('load', () => {
      setTimeout(() => {
        preloader.classList.add('loaded');
      }, 1);
      setTimeout(() => {
        preloader.remove();
      }, 2);
    });
  }

  /**
   * Mobile nav toggle
   */
  const mobileNavShow = document.querySelector('.mobile-nav-show');
  const mobileNavHide = document.querySelector('.mobile-nav-hide');

  document.querySelectorAll('.mobile-nav-toggle').forEach(el => {
    el.addEventListener('click', function(event) {
      event.preventDefault();
      mobileNavToogle();
    })
  });

  function mobileNavToogle() {
    document.querySelector('body').classList.toggle('mobile-nav-active');
    mobileNavShow.classList.toggle('d-none');
    mobileNavHide.classList.toggle('d-none');
  }

  /**
   * Hide mobile nav on same-page/hash links
   */
  document.querySelectorAll('#navbar a').forEach(navbarlink => {

    if (!navbarlink.hash) return;

    let section = document.getElementById(navbarlink.hash);
    if (!section) return;

    navbarlink.addEventListener('click', () => {
      if (document.querySelector('.mobile-nav-active')) {
        mobileNavToogle();
      }
    });

  });

  /**
   * Toggle mobile nav dropdowns
   */
  const navDropdowns = document.querySelectorAll('.navbar .dropdown > a');

  navDropdowns.forEach(el => {
    el.addEventListener('click', function(event) {
      if (document.querySelector('.mobile-nav-active')) {
        event.preventDefault();
        this.classList.toggle('active');
        this.nextElementSibling.classList.toggle('dropdown-active');

        let dropDownIndicator = this.querySelector('.dropdown-indicator');
        dropDownIndicator.classList.toggle('bi-chevron-up');
        dropDownIndicator.classList.toggle('bi-chevron-down');
      }
    })
  });

  /**
   * Scroll top button
   */
  const scrollTop = document.querySelector('.scroll-top');
  if (scrollTop) {
    const togglescrollTop = function() {
      window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
    }
    window.addEventListener('load', togglescrollTop);
    document.addEventListener('scroll', togglescrollTop);
    scrollTop.addEventListener('click', window.scrollTo({
      top: 0,
      behavior: 'smooth'
    }));
  }

  /**
   * Initiate glightbox
   */
  const glightbox = GLightbox({
    selector: '.glightbox'
  });

  /**
   * Init swiper slider with 1 slide at once in desktop view
   */
  new Swiper('.slides-1', {
    speed: 600,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    slidesPerView: 'auto',
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    }
  });

  /**
   * Init swiper slider with 3 slides at once in desktop view
   */
  new Swiper('.slides-3', {
    speed: 600,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    slidesPerView: 'auto',
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 40
      },

      1200: {
        slidesPerView: 3,
      }
    }
  });

  /**
   * Animation on scroll function and init
   */
  function aos_init() {
    AOS.init({
      duration: 1000,
      easing: 'ease-in-out',
      once: true,
      mirror: false
    });
  }
  window.addEventListener('load', () => {
    aos_init();
  });

});


