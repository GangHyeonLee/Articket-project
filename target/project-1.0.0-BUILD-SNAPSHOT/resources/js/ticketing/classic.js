
	$(document).ready(function(){
		
		const container = document.querySelector('.m_container');
		const seats = document.querySelectorAll('.m_row .seat:not(.occupied)');
		let count = document.getElementById('count');
		let total = document.getElementById('total');
		const movieSelect = document.getElementById('movie');
		

		populateUI();
		let ticketPrice = +movieSelect.value;

		// Save selected movie index and price
		function setMovieData(movieIndex, moviePrice) {
		  localStorage.setItem('selectedMovieIndex', movieIndex);
		  localStorage.setItem('selectedMoviePrice', moviePrice);
		}

		// Update total and count
		function updateSelectedCount() {
		  const selectedSeats = document.querySelectorAll('.m_row .seat.m_selected');

		  const seatsIndex = [...selectedSeats].map(seat => [...seats].indexOf(seat));

		  localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

		  const selectedSeatsCount = selectedSeats.length;

		  count.innerText = selectedSeatsCount;
		  total.innerText = selectedSeatsCount * ticketPrice;
		  
		  setMovieData(movieSelect.selectedIndex, movieSelect.value);
		}

		// Get data from localstorage and populate UI
		function populateUI() {
			for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.add('occupied');
				document.getElementById('B'+i).classList.add('occupied');
				document.getElementById('C'+i).classList.add('occupied');
				document.getElementById('D'+i).classList.add('occupied');
				document.getElementById('E'+i).classList.add('occupied');
				document.getElementById('F'+i).classList.add('occupied');
			}
		  const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
		  if (selectedSeats !== null && selectedSeats.length > 0) {
		    seats.forEach((seat, index) => {
		      if (selectedSeats.indexOf(index) > -1) {
		        seat.classList.add('m_selected');
		      }
		    });
		  }

		  const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');

		  if (selectedMovieIndex !== null) {
		    movieSelect.selectedIndex = selectedMovieIndex;
		  }
		}

		// Movie select event  r석 s석 이런거 선택하는것
		movieSelect.addEventListener('change', e => {
			document.getElementById("resultSeat").innerHTML= "";
			count.text = 0;
			total.text = 0;
			for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.remove('occupied');
				document.getElementById('B'+i).classList.remove('occupied');
				document.getElementById('C'+i).classList.remove('occupied');
				document.getElementById('D'+i).classList.remove('occupied');
				document.getElementById('E'+i).classList.remove('occupied');
				document.getElementById('F'+i).classList.remove('occupied');
				}
			
			if(e.target.value == 69000){
				for(var i = 1; i<=8; i++){
					document.getElementById('B'+i).classList.add('occupied');
					document.getElementById('C'+i).classList.add('occupied');
					document.getElementById('D'+i).classList.add('occupied');
					document.getElementById('E'+i).classList.add('occupied');
					document.getElementById('F'+i).classList.add('occupied');
				}
			}else if(e.target.value == 59000){
				for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.add('occupied');
				document.getElementById('C'+i).classList.add('occupied');
				document.getElementById('D'+i).classList.add('occupied');
				document.getElementById('E'+i).classList.add('occupied');
				document.getElementById('F'+i).classList.add('occupied');
				}
			}else if(e.target.value == 49000){
				for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.add('occupied');
				document.getElementById('B'+i).classList.add('occupied');
				document.getElementById('D'+i).classList.add('occupied');
				document.getElementById('E'+i).classList.add('occupied');
				document.getElementById('F'+i).classList.add('occupied');
				}
			}else if(e.target.value == 39000){
				for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.add('occupied');
				document.getElementById('B'+i).classList.add('occupied');
				document.getElementById('C'+i).classList.add('occupied');
				document.getElementById('E'+i).classList.add('occupied');
				document.getElementById('F'+i).classList.add('occupied');
				}
			}else if(e.target.value == 29000){
				for(var i = 1; i<=8; i++){
				document.getElementById('A'+i).classList.add('occupied');
				document.getElementById('B'+i).classList.add('occupied');
				document.getElementById('C'+i).classList.add('occupied');
				document.getElementById('D'+i).classList.add('occupied');
				}
			}else{
				for(var i = 1; i<=8; i++){
					document.getElementById('A'+i).classList.add('occupied');
					document.getElementById('B'+i).classList.add('occupied');
					document.getElementById('C'+i).classList.add('occupied');
					document.getElementById('D'+i).classList.add('occupied');
					document.getElementById('E'+i).classList.add('occupied');
					document.getElementById('F'+i).classList.add('occupied');
				}
			}
			
				
			console.log(e.target.value);
			
		  ticketPrice = +e.target.value;
		  setMovieData(e.target.selectedIndex, e.target.value);
		  updateSelectedCount();
		});

		// Seat click event  A1 A2 이런거 선택하는곳
		container.addEventListener('click', e => {
		  if (
		    e.target.classList.contains('seat') &&
		    !e.target.classList.contains('occupied')
		  ) {
		    e.target.classList.toggle('m_selected');
		    
		    if(document.getElementById('resultSeat').innerHTML == ""){
		    	document.getElementById('resultSeat').innerHTML = e.target.value;
		    	
		    }else{
		    	document.getElementById('resultSeat').innerHTML = "";
		    	
		    }
		    
		    

		    updateSelectedCount();
		  }
		});

		// Initial count and total set
		updateSelectedCount();

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
		    	   
		
		
		

		/* ---------  좌석 번호 클릭시 on, off이벤트 ------------  */
		
		/* ---------  End 좌석 번호 클릭이벤트 ------------  */
		
		
		
		
		$("#sendData").click(function(){
			 const user_id = $("#user_id") 
			   , coupon_id = $("#coupon_id")
			   , resultSeat = $("#resultSeat")
			   , prfnm = $("#prfnm")
			   , prfplcnm = $("#prfplcnm")
			   , date_viewing = $("#date_viewing")
			   , check_used = $("#check_used")
			   
			   
			   
			   
			   $.ajax({
			 	type: 'post',   //post방식으로 명시
				url : '/testtt',  //이동할 controller url 
				dataType:'json',   //json형식으로 받기
				data : {
				"user_id": user_id.val(),
				"coupon_id": coupon_id.val(),
				"resultSeat":resultSeat.text(),
				"prfnm":prfnm.text(),
				"prfplcnm":prfplcnm.text(),
				"date_viewing":date_viewing.text(),
				"check_used":check_used.val(),
				},
				success: function(data){   //데이터 주고받기 성공했을 경우 실행할 결과

				
						/*  $(".modal").fadeIn();
						 $("#result_data").text(data.id); */
				},
					
				
				error:function(msg){   //데이터 주고받기가 실패했을 경우 실행할 결과
					
					/* alert("Error : " + msg + "."); */
				}
				
			});
		});
		
	});













/* ---------------------------------- 달력 API --------------------------------------*/
$(function() {

  // rome(inline_cal, { time: false });


	rome(inline_cal, {time: false, inputFormat: 'YYYY년 MMMM DD일'}).on('data', function (value) {

	  result.value = value;

	  $("#date_viewing").text(result.value);

	});
	
	
	
});


