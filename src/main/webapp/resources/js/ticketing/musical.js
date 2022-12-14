
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

		// Movie select event  r??? s??? ????????? ???????????????
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

		// Seat click event  A1 A2 ????????? ???????????????
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
           		    "area": "??????",\
           		    "prfdtcnt": 41,\
           		    "prfpd": "2022.09.28~2022.12.04",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????????????????? 2???",\
           		    "prfnm": "????????? ??????",\
           		    "rnum": 1,\
           		    "seatcnt": 250,\
           		    "poster": "/upload/pfmPoster/PF_PF197001_220826_092858.gif",\
           		    "mt20id": "PF197001"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 70,\
           		    "prfpd": "2022.08.30~2022.11.06",\
           		    "cate": "?????????",\
           		    "prfplcnm": "?????????????????? ??????????????????",\
           		    "prfnm": "????????? ???????????????",\
           		    "rnum": 2,\
           		    "seatcnt": 1230,\
           		    "poster": "/upload/pfmPoster/PF_PF194176_220706_115141.gif",\
           		    "mt20id": "PF194176"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 50,\
           		    "prfpd": "2022.07.20~2022.10.23",\
           		    "cate": "?????????",\
           		    "prfplcnm": "?????????????????? ????????????",\
           		    "prfnm": "????????????",\
           		    "rnum": 3,\
           		    "seatcnt": 1255,\
           		    "poster": "/upload/pfmPoster/PF_PF191916_220530_111000.gif",\
           		    "mt20id": "PF191916"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 54,\
           		    "prfpd": "2022.09.06~2022.11.13",\
           		    "cate": "?????????",\
           		    "prfplcnm": "????????? ?????????????????? 2??? ?????????????????????",\
           		    "prfnm": "?????? ?????????",\
           		    "rnum": 4,\
           		    "seatcnt": 210,\
           		    "poster": "/upload/pfmPoster/PF_PF195467_220729_151732.gif",\
           		    "mt20id": "PF195467"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 60,\
           		    "prfpd": "2022.08.30~2022.11.13",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????? ???????????????(???. ???????????????)",\
           		    "prfnm": "???????????? 10?????? ????????????",\
           		    "rnum": 5,\
           		    "seatcnt": 1766,\
           		    "poster": "/upload/pfmPoster/PF_PF194642_220715_094015.gif",\
           		    "mt20id": "PF194642"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 42,\
           		    "prfpd": "2021.11.05~2023.01.29",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????? 2???(?????????)",\
           		    "prfnm": "??????",\
           		    "rnum": 6,\
           		    "seatcnt": 300,\
           		    "poster": "/upload/pfmPoster/PF_PF180108_220513_095237.gif",\
           		    "mt20id": "PF180108"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 30,\
           		    "prfpd": "2022.08.12~2022.10.23",\
           		    "cate": "?????????",\
           		    "prfplcnm": "?????????????????? BBCH???",\
           		    "prfnm": "?????????",\
           		    "rnum": 7,\
           		    "seatcnt": 1026,\
           		    "poster": "/upload/pfmPoster/PF_PF193042_220620_093340.gif",\
           		    "mt20id": "PF193042"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 27,\
           		    "prfpd": "2022.09.04~2022.11.07",\
           		    "cate": "?????????",\
           		    "prfplcnm": "????????????????????? ?????????????????????",\
           		    "prfnm": "?????????",\
           		    "rnum": 8,\
           		    "seatcnt": 233,\
           		    "poster": "/upload/pfmPoster/PF_PF196199_220812_113816.gif",\
           		    "mt20id": "PF196199"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 47,\
           		    "prfpd": "2022.09.16~2022.11.13",\
           		    "cate": "?????????",\
           		    "prfplcnm": "????????? ?????????",\
           		    "prfnm": "????????? ?????????",\
           		    "rnum": 9,\
           		    "seatcnt": 808,\
           		    "poster": "/upload/pfmPoster/PF_PF195029_220722_094530.gif",\
           		    "mt20id": "PF195029"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 22,\
           		    "prfpd": "2022.09.29~2022.12.26",\
           		    "cate": "?????????",\
           		    "prfplcnm": "????????????????????? FB???????????????",\
           		    "prfnm": "???????????? ????????? ????????? ??? ??????",\
           		    "rnum": 10,\
           		    "seatcnt": 500,\
           		    "poster": "/upload/pfmPoster/PF_PF197098_220829_095507.gif",\
           		    "mt20id": "PF197098"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 32,\
           		    "prfpd": "2022.07.12~2022.10.09",\
           		    "cate": "?????????",\
           		    "prfplcnm": "?????????????????? ????????? ??????",\
           		    "prfnm": "?????? ???",\
           		    "rnum": 11,\
           		    "seatcnt": 325,\
           		    "poster": "/upload/pfmPoster/PF_PF192774_220614_104731.gif",\
           		    "mt20id": "PF192774"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 26,\
           		    "prfpd": "2022.07.26~2022.10.16",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????????(???. ?????????????????? ?????? ???. ????????? ?????????) ??????????????????",\
           		    "prfnm": "???????????????",\
           		    "rnum": 12,\
           		    "seatcnt": 359,\
           		    "poster": "/upload/pfmPoster/PF_PF192944_220616_144920.jpg",\
           		    "mt20id": "PF192944"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 25,\
           		    "prfpd": "2022.09.03~2022.10.30",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????? 1???(?????????)",\
           		    "prfnm": "??????, ??????????????????",\
           		    "rnum": 13,\
           		    "seatcnt": 600,\
           		    "poster": "/upload/pfmPoster/PF_PF194484_220713_102819.gif",\
           		    "mt20id": "PF194484"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 48,\
           		    "prfpd": "2022.10.05~2023.02.26",\
           		    "cate": "?????????",\
           		    "prfplcnm": "????????????????????? ??????????????????",\
           		    "prfnm": "?????????",\
           		    "rnum": 14,\
           		    "seatcnt": 1242,\
           		    "poster": "/upload/pfmPoster/PF_PF195242_220726_144628.gif",\
           		    "mt20id": "PF195242"\
           		  },\
           		  {\
           		    "area": "??????",\
           		    "prfdtcnt": 43,\
           		    "prfpd": "2022.08.30~2022.11.13",\
           		    "cate": "?????????",\
           		    "prfplcnm": "??????????????????????????? 1???",\
           		    "prfnm": "?????????",\
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
		    	   
		
		
		

		/* ---------  ?????? ?????? ????????? on, off????????? ------------  */
		
		/* ---------  End ?????? ?????? ??????????????? ------------  */
		
		
		
		
		$("#sendData").click(function(){
			 const user_id = $("#user_id") 
			   , coupon_id = $("#coupon_id")
			   , resultSeat = $("#resultSeat")
			   , prfnm = $("#prfnm")
			   , prfplcnm = $("#prfplcnm")
			   , date_viewing = $("#date_viewing")
			   , check_used = $("#check_used")
			   
			   
			   
			   
			   $.ajax({
			 	type: 'post',   //post???????????? ??????
				url : '/testtt',  //????????? controller url 
				dataType:'json',   //json???????????? ??????
				data : {
				"user_id": user_id.val(),
				"coupon_id": coupon_id.val(),
				"resultSeat":resultSeat.text(),
				"prfnm":prfnm.text(),
				"prfplcnm":prfplcnm.text(),
				"date_viewing":date_viewing.text(),
				"check_used":check_used.val(),
				},
				success: function(data){   //????????? ???????????? ???????????? ?????? ????????? ??????

				
						/*  $(".modal").fadeIn();
						 $("#result_data").text(data.id); */
				},
					
				
				error:function(msg){   //????????? ??????????????? ???????????? ?????? ????????? ??????
					
					/* alert("Error : " + msg + "."); */
				}
				
			});
		});
		
	});













/* ---------------------------------- ?????? API --------------------------------------*/
$(function() {

  // rome(inline_cal, { time: false });


	rome(inline_cal, {time: false, inputFormat: 'YYYY??? MMMM DD???'}).on('data', function (value) {

	  result.value = value;

	  $("#date_viewing").text(result.value);

	});
	
	
	
});


