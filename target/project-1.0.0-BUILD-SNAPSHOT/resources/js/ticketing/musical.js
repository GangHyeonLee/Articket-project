
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
           		    "prfdtcnt": 41,\
           		    "prfpd": "2022.09.28~2022.12.04",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "대학로아트원씨어터 2관",\
           		    "prfnm": "인간의 법정",\
           		    "rnum": 1,\
           		    "seatcnt": 250,\
           		    "poster": "/upload/pfmPoster/PF_PF197001_220826_092858.gif",\
           		    "mt20id": "PF197001"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 70,\
           		    "prfpd": "2022.08.30~2022.11.06",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "샤롯데씨어터 샤롯데씨어터",\
           		    "prfnm": "미세스 다웃파이어",\
           		    "rnum": 2,\
           		    "seatcnt": 1230,\
           		    "poster": "/upload/pfmPoster/PF_PF194176_220706_115141.gif",\
           		    "mt20id": "PF194176"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 50,\
           		    "prfpd": "2022.07.20~2022.10.23",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "충무아트센터 대공연장",\
           		    "prfnm": "킹키부츠",\
           		    "rnum": 3,\
           		    "seatcnt": 1255,\
           		    "poster": "/upload/pfmPoster/PF_PF191916_220530_111000.gif",\
           		    "mt20id": "PF191916"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 54,\
           		    "prfpd": "2022.09.06~2022.11.13",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "대학로 드림아트센터 2관 더블케이씨어터",\
           		    "prfnm": "라흐 헤스트",\
           		    "rnum": 4,\
           		    "seatcnt": 210,\
           		    "poster": "/upload/pfmPoster/PF_PF195467_220729_151732.gif",\
           		    "mt20id": "PF195467"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 60,\
           		    "prfpd": "2022.08.30~2022.11.13",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "블루스퀘어 신한카드홀(구. 인터파크홀)",\
           		    "prfnm": "엘리자벳 10주년 기념공연",\
           		    "rnum": 5,\
           		    "seatcnt": 1766,\
           		    "poster": "/upload/pfmPoster/PF_PF194642_220715_094015.gif",\
           		    "mt20id": "PF194642"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 42,\
           		    "prfpd": "2021.11.05~2023.01.29",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "유니플렉스 2관(중극장)",\
           		    "prfnm": "빨래",\
           		    "rnum": 6,\
           		    "seatcnt": 300,\
           		    "poster": "/upload/pfmPoster/PF_PF180108_220513_095237.gif",\
           		    "mt20id": "PF180108"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 30,\
           		    "prfpd": "2022.08.12~2022.10.23",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "광림아트센터 BBCH홀",\
           		    "prfnm": "서편제",\
           		    "rnum": 7,\
           		    "seatcnt": 1026,\
           		    "poster": "/upload/pfmPoster/PF_PF193042_220620_093340.gif",\
           		    "mt20id": "PF193042"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 27,\
           		    "prfpd": "2022.09.04~2022.11.07",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "대학로자유극장 대학로자유극장",\
           		    "prfnm": "브론테",\
           		    "rnum": 8,\
           		    "seatcnt": 233,\
           		    "poster": "/upload/pfmPoster/PF_PF196199_220812_113816.gif",\
           		    "mt20id": "PF196199"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 47,\
           		    "prfpd": "2022.09.16~2022.11.13",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "코엑스 아티움",\
           		    "prfnm": "사랑의 불시착",\
           		    "rnum": 9,\
           		    "seatcnt": 808,\
           		    "poster": "/upload/pfmPoster/PF_PF195029_220722_094530.gif",\
           		    "mt20id": "PF195029"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 22,\
           		    "prfpd": "2022.09.29~2022.12.26",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "잠실종합운동장 FB빅탑시어터",\
           		    "prfnm": "푸에르자 부르타 웨이라 인 서울",\
           		    "rnum": 10,\
           		    "seatcnt": 500,\
           		    "poster": "/upload/pfmPoster/PF_PF197098_220829_095507.gif",\
           		    "mt20id": "PF197098"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 32,\
           		    "prfpd": "2022.07.12~2022.10.09",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "충무아트센터 중극장 블랙",\
           		    "prfnm": "쓰릴 미",\
           		    "rnum": 11,\
           		    "seatcnt": 325,\
           		    "poster": "/upload/pfmPoster/PF_PF192774_220614_104731.gif",\
           		    "mt20id": "PF192774"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 26,\
           		    "prfpd": "2022.07.26~2022.10.16",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "플러스씨어터(구. 컬처스페이스 엔유 구. 쁘티첼 씨어터) 플러스씨어터",\
           		    "prfnm": "시데레우스",\
           		    "rnum": 12,\
           		    "seatcnt": 359,\
           		    "poster": "/upload/pfmPoster/PF_PF192944_220616_144920.jpg",\
           		    "mt20id": "PF192944"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 25,\
           		    "prfpd": "2022.09.03~2022.10.30",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "유니플렉스 1관(대극장)",\
           		    "prfnm": "안나, 차이코프스키",\
           		    "rnum": 13,\
           		    "seatcnt": 600,\
           		    "poster": "/upload/pfmPoster/PF_PF194484_220713_102819.gif",\
           		    "mt20id": "PF194484"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 48,\
           		    "prfpd": "2022.10.05~2023.02.26",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "디큐브아트센터 디큐브씨어터",\
           		    "prfnm": "마틸다",\
           		    "rnum": 14,\
           		    "seatcnt": 1242,\
           		    "poster": "/upload/pfmPoster/PF_PF195242_220726_144628.gif",\
           		    "mt20id": "PF195242"\
           		  },\
           		  {\
           		    "area": "서울",\
           		    "prfdtcnt": 43,\
           		    "prfpd": "2022.08.30~2022.11.13",\
           		    "cate": "뮤지컬",\
           		    "prfplcnm": "대학로아트원씨어터 1관",\
           		    "prfnm": "배니싱",\
           		    "rnum": 15,\
           		    "seatcnt": 365,\
           		    "poster": "/upload/pfmPoster/PF_PF195632_220803_094249.gif",\
           		    "mt20id": "PF195632"\
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


