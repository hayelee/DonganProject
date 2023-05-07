<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/ol@v7.3.0/dist/ol.js"></script>
<script src="https://cdn.jsdelivr.net/npm/ol@v7.3.0/dist/ol.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/proj4js/2.9.0/proj4.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/ol@v7.3.0/ol.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/ol@v7.3.0/ol.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/x2js/1.2.0/xml2json.min.js"
	integrity="sha512-HX+/SvM7094YZEKOCtG9EyjRYvK8dKlFhdYAnVCGNxMkA59BZNSZTZrqdDlLXp0O6/NjDb1uKnmutUeuzHb3iQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/bootstrap-5.2.3-dist/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath }/resources/css/myHome.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/images/녹색집.png">
<head>
<meta charset="utf-8">
<title>쾌적한동안</title>
</head>
<style>
</style>

<body>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-5.2.3-dist/js/bootstrap.bundle.min.js"></script>
	<!-- 메뉴탭 -->
	<div id="map" class="map">
		<div id="popup-container"></div>
		<div id="popup" class="popup"></div>
		<!-- 메뉴1 패널 -->
		<div class="panel1">
			<div>
				<h5>
					<strong>경기도 안양시 동안구<strong>
				</h5>
			</div>
			<select id="mySelect" class="sggselect"
				style="height: 30px; margin-left: 205px; margin-top: -33px;">
				<option value="ㅇ">읍/면/동</option>
				<option value="갈산동">갈산동</option>
				<option value="관양1동">관양1동</option>
				<option value="관양2동">관양2동</option>
				<option value="귀인동">귀인동</option>
				<option value="달안동">달안동</option>
				<option value="범계동">범계동</option>
				<option value="부림동">부림동</option>
				<option value="부흥동">부흥동</option>
				<option value="비산1동">비산1동</option>
				<option value="비산2동">비산2동</option>
				<option value="비산3동">비산3동</option>
				<option value="신촌동">신촌동</option>
				<option value="평안동">평안동</option>
				<option value="평촌동">평촌동</option>
				<option value="호계1동">호계1동</option>
				<option value="호계2동">호계2동</option>
				<option value="호계3동">호계3동</option>
			</select>
			<div>
				<button class="dongButton" id="searchButton" type="button">GO!</button>
<!-- 				<button class="resetButton" id="resetButton" type="button">레이어 -->
<!-- 					초기화</button> -->
			</div>
			<div class="select-container">
				<button type="button" class="chartBtn">주거 현황 보기</button>
				<button type="button" class="yosoBtn">나의 요소 선택</button>
			</div>
			<div class="btn-container">
				<div class="btn text_photo">
					<img id="image1" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/공원.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">공원</span>
						<p id = 'explain'>공원</p> 
				</div>
				<div class="btn">
					<img id="image2" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/마트편의점.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">마트/편의점</span>
						<p id = 'explain'>마트</p> 
				</div>
				<div class="btn">
					<img id="image3" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/병언.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">병원</span>
						<p id = 'explain'>병원</p> 
				</div>
				<div class="btn">
					<img id="image4" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/약국.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">약국</span>
						<p id = 'explain'>약국</p>
				</div>
				<div class="btn">
					<img id="image5" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/생활안전.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">생활안전정보
					</span>
					<p id = 'explain'>생활안전</p> 
				</div>
				<div class="btn">
					<img id="image6" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/부동산.png"
						alt="버튼 이미지" width="20" height="20"> <span class="tooltip">실거래가</span>
						<p id = 'explain'>실거래가</p> 
				</div>
			</div>
		</div>
		<div id="info"></div>
		<!-- 메뉴2 나오는 패널 -->
		<div id="panel2" class="panel2">
			<p style="position: absolute; font-size: 16px; font-weight:100;margin-top: 7px; margin-left: 8px;">생활안전</p>
			<span class="close3">&times;</span> <br> <img id="image10"
				class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/공사중.png"
				alt="버튼 이미지"
				style="height: 63px; margin-top: 22px; margin-left: 10px;"> <img
				id="image11" class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/산불.png"
				alt="버튼 이미지"
				style="height: 63px; margin-top: 22px; margin-left: 35px;"> <img
				id="image12" class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/교통사고.png"
				alt="버튼 이미지"
				style="height: 63px; margin-top: 22px; margin-left: 35px;">
			<%-- 			 <img id="image13" class="imageClass" src="${pageContext.request.contextPath }/resources/images/치안.png" alt="버튼 이미지" style="height: 63px; margin-top: 22px; margin-left: 10px;"> --%>
			<img id="image14" class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/폐기물.png"
				alt="버튼 이미지"
				style="height: 63px; margin-top: 22px; margin-left: 51px;"> <img
				id="image15" class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/공장.png"
				alt="버튼 이미지"
				style="height: 63px; margin-top: 22px; margin-left: 46px;">
			<%-- 			 <form> --%>
			<!-- 		     	<label for="radius">radius size</label> -->
			<!-- 		     	<input id="radius" type="range" min="1" max="50" step="1" value="5"/> -->
			<!-- 		     	<label for="blur">blur size</label> -->
			<!-- 		     	<input id="blur" type="range" min="1" max="50" step="1" value="15"/> -->
			<%-- 		    </form> --%>
			<!-- Pointer events polyfill for old browsers, see https://caniuse.com/#feat=pointer -->
			<script
				src="https://cdn.jsdelivr.net/npm/elm-pep@1.0.6/dist/elm-pep.js"></script>
			<script type="module" src="main.js"></script>
		</div>
		<!-- 메뉴3 교통패널 -->
		<div class="panel3">
			<div class="btn-container2">
				<div class="btn">
					<img id="image7" class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/버스정류장.png"
						alt="버튼 이미지" style="margin-top: -19px;"> 
						<img id="image8"
						class="imageClass"
						src="${pageContext.request.contextPath }/resources/images/지하철역.png"
						alt="버튼 이미지" style="margin-top: -19px;">
				</div>
			</div>
			
		</div>
		<button class="changeLayer" onclick="changeLayer()"  style="border: 1px solid; position: absolute; right: 0px; bottom: 0px; z-index:9999999999999; height: 90px;">레이어 변경</button>
		<!-- 메뉴4 나오는 패널 -->
		<div id="panel4" class="panel4">
			<p style="position: absolute; margin-top: 7px; margin-left: 8px;">주거
				현황</p>
			<span class="close4">&times;</span> <br>
			<div class="chart-container"">
				<p class="pTag"
					style="font-size: 12px; margin-left: 7px; margin-top: 10px; margin-bottom: -11px;">지역별
					편의시설 현황을 확인할 수 있습니다.</p>
				<hr>
				<div class="MyChart"></div>
				<div>
					<canvas id="myChart"></canvas>
				</div>
			</div>
			<p class="pTag" id="sangsepTag"
				style="position: absolute; font-size: 12px; margin-left: 233px; margin-top: -17px; margin-bottom: -11px;">
				<strong>상세보기▽<strong>
			</p>
		</div>
		<!-- 메뉴4-1 나오는 패널 -->
		<div id="panel4-1" class="panel4-1">
			<div class="chart-container">
				<!-- 모달 내용 -->
				<div class="radioContainer" style="margin-left: 27px;">
					<input type="radio" class="btn-check" name="options" id="option1-1"
						checked autocomplete="off"> <label
						class="btn btn-secondary" for="option1-1"
						style="margin-right: 6px; width: 68px;">공원</label> <input
						type="radio" class="btn-check" name="options" id="option2-1"
						autocomplete="off"> <label class="btn btn-secondary"
						for="option2-1" style="margin-right: 6px; width: 68px;">마트</label>

					<input type="radio" class="btn-check" name="options" id="option3-1"
						autocomplete="off"> <label class="btn btn-secondary"
						for="option3-1" style="margin-right: 6px; width: 68px;">병원</label>

					<input type="radio" class="btn-check" name="options" id="option4-1"
						autocomplete="off"> <label class="btn btn-secondary"
						for="option4-1" style="margin-right: 6px; width: 68px;">약국</label>
				</div>
				<hr style="margin-top: 9px;">
				<button type="button" class="deleteBtn" id="deleteBtn">삭제</button>
				<div class="parkTable scroller" id='parkTable'
					style="display: none; overflow-y: scroll; height: 175px; margin-top: 9px; margin-left: 3px;">
					<table class="table-blue scrollshover">
						<thead class="fixedHeader">
							<tr>
								<th style="width: 114px;"><a>이름</a></th>
								<th style="width: 52px;"><a>면적</a></th>
								<th><a>주소</a></th>
							</tr>
						</thead>
						<tbody id="park-tbody">

						</tbody>
					</table>
				</div>
				<div class="martTable scroller" id='martTable'
					style="display: none; overflow-y: scroll; height: 175px; margin-top: 9px; margin-left: 3px;">
					<table class="table-blue scrollshover">
						<thead class="fixedHeader">
							<tr>
								<th><a>이름</a></th>
								<th><a>구분</a></th>
								<th><a>주소</a></th>
							</tr>
						</thead>
						<tbody id="mart-tbody">

						</tbody>
					</table>
				</div>
			</div>
			<div class='hosTable scroller' id='hosTable'
				style="overflow-y: scroll; display: none; height: 175px; margin-top: 9px; margin-left: 3px;">
				<table class="table-blue scrollshover">
					<thead class="fixedHeader">
						<tr>
							<th><a>이름</a></th>
							<th><a>구분</a></th>
							<th><a>주소</a></th>
							<th><a>전화번호</a></th>
						</tr>
					</thead>
					<tbody id="hos-tbody">

					</tbody>
				</table>
			</div>
			<div class='pharmTable scroller' id='pharmTable'
				style="display: none; overflow-y: scroll; height: 175px; margin-top: 9px; margin-left: 3px;">
				<table class="table-blue scrollshover">
					<thead class="fixedHeader">
						<tr>
							<th><a>이름</a></th>
							<th><a>주소</a></th>
							<th><a>전화번호</a></th>
						</tr>
					</thead>
					<tbody id="pharma-tbody">

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 메뉴5 나오는 패널 -->
	<div id="panel5" class="panel5">
		<p style="position: absolute; font-size: 16px; margin-top: 7px; margin-left: 8px; font-weight: normal;">주거
			형태</p>
		<span class="close5">&times;</span> <br>
		<div class="chart-container">
			<p class="pTag"
				style="font-size: 12px; margin-left: 7px; margin-top: 10px; margin-bottom: -11px; font-weight: normal;">주거형태를
				선택하면 해당되는 위치가 지도에 표시됩니다.</p>
			<hr>
			<div class=myhouse " style="margin-top: -23px;">
				<button class="aptBtn" id="aptBtn">아파트</button>
				<button class="dasedeBtn" id="dasedeBtn">연립다세대</button>
				<button class="opBtn" id="opBtn">오피스텔</button>
			</div>
		</div>
	</div>
	<div class="modify-container2">
		<img id="image9" class="imageClass"
			src="${pageContext.request.contextPath }/resources/images/수정.png"
			alt="버튼 이미지"
			style="height: 57px; margin-left: 385px; margin-top: -694px; z-index: 999;">
	</div>
	<div class="mypage-container2">
		<img data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
			aria-controls="offcanvasExample"
			src="${pageContext.request.contextPath }/resources/images/마이페이지.png"
			alt="My Image"
			style="height: 57px; margin-left: 382px; margin-top: -619px;">
	</div>
	<!-- 메뉴 선택시 나오는 패널 -->

	<!-- 등록 모달 -->
	<div class="modal2" id="layerpop2">
		<div class="modal2-content">
			<h5>
				주거현황 등록 <span class="close2">&times;</span>
			</h5>
			<hr>
			<!-- 모달 내용 -->
			<div class="radioContainer" style="margin-left: 27px;">
				<input type="radio" class="btn-check" name="options" id="option1"
					checked autocomplete="off"> <label
					class="btn btn-secondary" for="option1"
					style="margin-right: 6px; width: 100px;">공원</label> <input
					type="radio" class="btn-check" name="options" id="option2"
					autocomplete="off"> <label class="btn btn-secondary"
					for="option2" style="margin-right: 6px; width: 100px;">마트</label> <input
					type="radio" class="btn-check" name="options" id="option3"
					autocomplete="off"> <label class="btn btn-secondary"
					for="option3" style="margin-right: 6px; width: 100px;">병원</label> <input
					type="radio" class="btn-check" name="options" id="option4"
					autocomplete="off"> <label class="btn btn-secondary"
					for="option4" style="margin-right: 6px; width: 100px;">약국</label>
			</div>
			<div></div>
			<hr style="margin-bottom: 30px;">
			<div id="park-form" style="display: none;" class="insertDiv">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm park_name"
						style="width: 74px;" >공원이름</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm"value="맑은공원" id="park_nm"> <span
						class="input-group-text" id="inputGroup-sizing-sm park_dong"
						style="width: 74px;" >동네</span> <input type="text"
						class="form-control" value="범계동" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="park_dong">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm park_tele">전화번호</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input" value="031-123-1254"
						aria-describedby="inputGroup-sizing-sm" id="park_tel"> <span
						class="input-group-text" id="inputGroup-sizing-sm park_area">면적(㎡)</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" value="3545" id="park_area">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control address_kakao"
						name="park_addr" placeholder="주소를 검색해주세요"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						style="height: 32px;" id="park_addr">
					<button class="btn btn-outline-secondary address_kakao_button"
						type="button" style="height: 32px;">검색</button>
				</div>
				<input type="text" class="form-control" name="address_detail"
					placeholder="상세주소" aria-label="Recipient's username"
					aria-describedby="button-addon2" style="height: 32px;"
					id="park_addr2">
				<button type="button" class="modalGo2" id="modalGoId"
					style="display: none;">저장</button>
			</div>
			<div id="mart-form" style="display: none;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm"
						style="width: 74px;">마트이름</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="mart_nm"> <span
						class="input-group-text" id="inputGroup-sizing-sm"
						style="width: 74px;">동네</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="mart_dong">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm"
						style="font-size: 13px; height: 31px; width: 74px;">마트분류</span> <input
						type="text" class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" style="height: 31;"
						id="mart_cate">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control address_kakao"
						placeholder="주소를 검색해주세요" name="mart_addr"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						style="height: 32px;" id="mart_addr">
					<button class="btn btn-outline-secondary address_kakao_button"
						type="button" style="height: 32px;">검색</button>
				</div>
				<input type="text" class="form-control" placeholder="상세주소"
					aria-label="Recipient's username" aria-describedby="button-addon2"
					style="height: 32px;" id="mart_addr2" value="132번지">
				<button type="button" class="modalGo2" id="modalGoId2"
					style="display: none;">저장</button>
			</div>
			<div id="hos-form" style="display: none;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm"
						style="width: 74px;">병원이름</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="duty_name"> <span
						class="input-group-text" id="inputGroup-sizing-sm"
						style="width: 74px;">병원분류</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="duty_div_nam">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm hos_tel"
						style="width: 74px;">전화번호</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="duty_tel"> <span
						class="input-group-text" id="inputGroup-sizing-sm hos_dong"
						style="width: 74px;">동네</span> <input type="text"
						class="form-control" aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="hos_dong">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control address_kakao"
						placeholder="주소를 검색해주세요" name="hos_addr"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						style="height: 32px;" id="hos_addr">
					<button class="btn btn-outline-secondary address_kakao_button"
						type="button" style="height: 32px;">검색</button>
				</div>
				<input type="text" class="form-control" placeholder="상세주소"
					aria-label="Recipient's username" aria-describedby="button-addon2"
					style="height: 32px;" id="hos_addr2">
				<button type="button" class="modalGo2" id="modalGoId3"
					style="display: none;">저장</button>
			</div>
			<div id="pharm-form" style="display: none;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text"
						id="inputGroup-sizing-sm pharma_name" style="width: 74px;">약국이름</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="pharma_name">
					<span class="input-group-text"
						id="inputGroup-sizing-sm pharma_dong" style="width: 74px;">동네</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="pharma_dong">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">전화번호</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-sm" id="duty_tel1">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control address_kakao"
						placeholder="주소를 검색해주세요" name="pharma_addr"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						style="height: 32px;" id="pharma_addr">
					<button class="btn btn-outline-secondary address_kakao_button"
						type="button" id="address_kakao" style="height: 32px;">검색</button>
				</div>
				<input type="text" class="form-control" placeholder="상세주소"
					aria-label="Recipient's username" aria-describedby="button-addon2"
					style="height: 32px;" id="pharma_addr2">
				<button type="button" class="modalGo2" id="modalGoId4"
					style="display: none;">저장</button>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="modall" id="layerpopp">
		<div class="modal-content">
			<h5>
				나의 요소 선택 <span class="close">&times;</span>
			</h5>
			<hr style="margin: 2px;">
			<div style="margin-top: 14px; margin-left: 67px;">
				<span>동네 선택</span> <select id="mySelect2" class="sggselect2"
					style="height: 30px; text-align: center; margin-left: 16px; width: 185px;">
					<option value="ㅇ">읍/면/동</option>
					<option value="갈산동">갈산동</option>
					<option value="관양1동">관양1동</option>
					<option value="관양2동">관양2동</option>
					<option value="귀인동">귀인동</option>
					<option value="달안동">달안동</option>
					<option value="범계동">범계동</option>
					<option value="부림동">부림동</option>
					<option value="부흥동">부흥동</option>
					<option value="비산1동">비산1동</option>
					<option value="비산2동">비산2동</option>
					<option value="비산3동">비산3동</option>
					<option value="신촌동">신촌동</option>
					<option value="평안동">평안동</option>
					<option value="평촌동">평촌동</option>
					<option value="호계1동">호계1동</option>
					<option value="호계2동">호계2동</option>
					<option value="호계3동">호계3동</option>
				</select>
			</div>
			<span style="margin-top: 25px;">주거형태</span>
			<div style="margin-top: 0px; margin-left: 13px;">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="aptCheck"
						value="아파트" name="homeType"> <label
						class="form-check-label" for="inlineCheckbox1">아파트</label>
				</div>
				<div class="form-check form-check-inline" style="margin-left: 54px;">
					<input class="form-check-input" type="radio" id="daCheck"
						value="연립다세대" name="homeType"> <label
						class="form-check-label" for="inlineCheckbox2">연립다세대</label>
				</div>
				<div class="form-check form-check-inline" style="margin-left: 43px;">
					<input class="form-check-input" type="radio" id="opCheck"
						value="오피스텔" name="homeType"> <label
						class="form-check-label" for="inlineCheckbox3">오피스텔</label>
				</div>
			</div>
			<span style="margin-top: 25px;">전세/보증금(최소~최대)</span>
			<div class="input-group input-group-sm mb-3" style="margin-top: 10;">
				<input type="text" class="form-control"
					aria-label="Sizing example input" id="park_nm"
					aria-describedby="inputGroup-sizing-sm" style="text-align: right;"
					value="0" readonly> <span class="input-group-text"
					id="inputGroup-sizing-sm park_name" style="width: 45px;">만원</span>
				~ <input type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-sm" style="text-align: right;"
					id="bigInput" > <span class="input-group-text"
					id="inputGroup-sizing-sm park_dong" style="width: 45px;">만원</span>
			</div>
			<span style="margin-top: -6px;">월세(최소~최대)</span>
			<div class="input-group input-group-sm mb-3" style="margin-top: 10;">
				<input type="text" class="form-control"
					aria-label="Sizing example input" id="park_nm"
					aria-describedby="inputGroup-sizing-sm" style="text-align: right;"
					value="0" readonly> <span class="input-group-text"
					id="inputGroup-sizing-sm park_name" style="width: 45px;">만원</span>
				~ <input type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-sm" style="text-align: right;"
					id="smallInput" > <span class="input-group-text"
					id="inputGroup-sizing-sm park_dong" style="width: 45px;">만원</span>
			</div>
			<span style="margin-top: -6px;">세력권</span>
			<p style="font-size: 14px; font-weight: normal;">쾌적한 환경이 기준이기
				때문에, 공원을 우선으로 분석합니다! <br>2순위 요소를 선택해주세요!</p>
			<img id="image15" class="imageClass"
				src="${pageContext.request.contextPath }/resources/images/나무.png"
				alt="버튼 이미지"
				style="height: 156px; width: 139px; margin-top: -7px; margin-left: 151px; opacity: 0.5;">
			<div style="margin-top: 2px; margin-left: 31px;">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="martCheck"
						value="마트" name="influType"> <label
						class="form-check-label" for="inlineCheckbox4">마트/편의점</label>
				</div>
				<div class="form-check form-check-inline" style="margin-left: 38px;">
					<input class="form-check-input" type="radio" id="hosCheck"
						value="병원" name="influType"> <label
						class="form-check-label" for="inlineCheckbox5">병원</label>
				</div>
				<div class="form-check form-check-inline" style="margin-left: 38px;">
					<input class="form-check-input" type="radio" id="busCheck"
						value="교통수단" name="influType"> <label
						class="form-check-label" for="inlineCheckbox6">교통수단</label>
				</div>
			</div>
			<button type="button" class="modalGo" id="yosoGoBtn">저장</button>
		</div>
	</div>
	<!-- 마이페이지 오프캔버스 -->
	<div class="offcanvas offcanvas-end" tabindex="-1"
		id="offcanvasExample" aria-labelledby="offcanvasExampleLabel"
		style="width: 632px;">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasExampleLabel"></h5>
			<button type="button" class="btn-close text-reset"
				data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<!-- 오프캔버스 내용 -->
			<div id="wrapper">
				<!--탭 메뉴 영역 -->
				<ul class="tabs">
					<li><a href="#tab1">요소확인</a></li>
					<li><a href="#tab2">관심목록</a></li>
				</ul>

				<!--탭 콘텐츠 영역 -->
				<div class="tab_container" style="height: 800px;">
					<div id="tab1" class="tab_content">
						<div style="display: inline-block">
							<button type="button" class="insertBtn" id="insertBtn"
								style="margin-top: -2px; margin-left: 368px; margin-bottom: 10px; width: 90px; height: 28px;">분석하기</button>
							<button type="button" class="deleteBtn2" id="deleteBtn2"
								style="margin-top: -39px; margin-left: 467px; margin-bottom: 10px; width: 90px; height: 28px;">삭제</button>
						</div>
						<table class="table-blue">
							<thead class="fixedHeader">
								<tr>
									<th><a>동네</a></th>
									<th><a>주거형태</a></th>
									<th><a>전세/보증금</a></th>
									<th><a>월세</a></th>
									<th><a>주요세력권</a></th>
								</tr>
							</thead>
							<tbody id="yoso-tbody">

							</tbody>
						</table>
						<div class="tab_container2" style="margin-top: 151px;">
							<div>
								<h4 style="margin-left: 26px; margin-top: 16px";>분석결과상세</h4>
							</div>
							<p class="pTag"
								style="font-size: 12px; margin-left: 28px; margin-top: -3px; margin-bottom: -11px; font-weight: normal;">내가
								선택한 요소의 분석 결과를 확인할 수 있습니다.</p>
							<br>
							<div class="scroller" style="overflow-y: scroll; height: 272px;">
								<table class="table-blue scrollshover">
									<thead class="fixedHeader">
										<tr>
											<th><a>상세주소</a></th>
											<th style="width: 65px;"><a>건물명</a></th>
											<th style="width: 55px;"><a>전월세구분</a></th>
											<th style="width: 49px;"><a>전세/보증금</a></th>
											<th style="width: 50px;"><a>월세</a></th>
											<th style="width: 42px;"><a>공원</a></th>
											<th style="width: 50px;"><a>공원 면적</a></th>
											<th style="width: 48px;"><a>주요세력권</a></th>
											<th style="width: 49px;"><a>찜</a></th>
										</tr>
									</thead>
									<tbody id="analy-tbody">

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- 탭2 -->
					<div id="tab2" class="tab_content">
						<!--Content-->
							<div class="scroller" style="overflow-y: scroll; height: 341px;">
								<table class="table-blue scrollshover">
									<thead class="fixedHeader">
										<tr>
											<th><a>상세주소</a></th>
											<th style="width: 65px;"><a>건물명</a></th>
											<th style="width: 55px;"><a>전월세구분</a></th>
											<th style="width: 49px;"><a>전세/보증금</a></th>
											<th style="width: 50px;"><a>월세</a></th>
											<th style="width: 42px;"><a>공원</a></th>
											<th style="width: 50px;"><a>공원 면적</a></th>
											<th style="width: 48px;"><a>주요세력권 개수</a></th>
											<th style="width: 49px;"><a>찜</a></th>
										</tr>
									</thead>
									<tbody id="jjim-tbody">

									</tbody>
								</table>
							</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e914f526a38f6d270e7641162b27369e"></script>
		<script
			src="https://map.vworld.kr/js/map/OpenLayers-2.13/OpenLayers-2.13.js"></script>
		<script
			src="https://map.vworld.kr/js/apis.do?type=Base&apiKey=7095CCD7-3C4E-3D28-9D15-5A558C3BB526"></script>
		<script>
	var offcanvasElement = document.getElementById('offcanvasExample');
	var offcanvas = new bootstrap.Offcanvas(offcanvasElement);
// 	let id = event.target.id;
	/* 지도 보이게 */
	
	proj4.defs(
   		'EPSG:5181', '+proj=tmerc +lat_0=38 +lon_0=127 +k=1 +x_0=200000 +y_0=500000 +ellps=GRS80 +units=m +no_defs'
// 		'EPSG:5174', '+proj=tmerc +lat_0=38 +lon_0=127.0028902777778 +k=1 +x_0=200000 +y_0=500000 +ellps=bessel +units=m +no_defs +towgs84=-115.80,474.99,674.11,1.16,-2.31,-1.63,6.43'
	);
	ol.proj.proj4.register(proj4);
	
	let view = new ol.View({
		center: ol.proj.fromLonLat([126.9568209, 37.3942527], 'EPSG:5181'),
		projection: ol.proj.get('EPSG:5181'),
		zoom: 13
    });
	
	/* 기본지도 */
    const baseLayer = new ol.layer.Tile({
        name: "base",
        source: new ol.source.XYZ({
          url:
            "http://api.vworld.kr/req/wmts/1.0.0/7095CCD7-3C4E-3D28-9D15-5A558C3BB526/Base/{z}/{y}/{x}.png",
        }),
      });
	/* 백지도 */
	const whiteLayer = new ol.layer.Tile({
		name: "white",
		source: new ol.source.XYZ({
			url:
			 "http://api.vworld.kr/req/wmts/1.0.0/783D66F2-A36F-3995-B0D6-35F1429C1BFE/white/{z}/{y}/{x}.png",
		}),
 		visible: false,
	});
    /* 위성지도 */  
	const satelliteLayer = new ol.layer.Tile({
		name: "Satellite",
		source: new ol.source.XYZ({
			url:
			  "http://api.vworld.kr/req/wmts/1.0.0/783D66F2-A36F-3995-B0D6-35F1429C1BFE/Satellite/{z}/{y}/{x}.jpeg",
		}),
		visible: false,
	});
    
	const map = new ol.Map({
		target: "map",
		layers: [baseLayer, whiteLayer, satelliteLayer],
		view: view,
	});

	function changeLayer() {
	    if (whiteLayer.getVisible()) {
	        whiteLayer.setVisible(false);
	        baseLayer.setVisible(false);
	        satelliteLayer.setVisible(true);
	    } else if (baseLayer.getVisible()) {
	        baseLayer.setVisible(false);
	        satelliteLayer.setVisible(false);
	        whiteLayer.setVisible(true);
	    } else {
	        satelliteLayer.setVisible(false);
	        whiteLayer.setVisible(false);
	        baseLayer.setVisible(true);
	    }
	}
	
	
	$("#resetButton").on("click", () => {
		dongPop().hide;
	 	selectPop().hide;
	});
	
	let currentLayer = null;
	/* 클릭했을때 팝업 띄우기 */
	const popup = new ol.Overlay({
		element: document.getElementById('popup'),
	});
	map.addOverlay(popup);
	const element = popup.getElement();
	
	console.log("element???",element)
// 	addEmd();
// 	selectPop();
	// 선택한 행정구역 레이어
    let myChart;
	
	const searchButton = document.getElementById("searchButton");
	searchButton.addEventListener("click", (event) => {
		const select = document.getElementById("mySelect");
		const selectedValue = select.value;
		if (selectedValue !== '') {
		    const cqlFilter = "adm_nm like '%" + selectedValue + "%'";
		    const emdSource = new ol.source.ImageWMS({
				url: 'http://localhost:8888/geoserver/wms',
				params: {
					'LAYERS': 'haye:dongan',
					'CQL_FILTER': cqlFilter,
					VERSION: '1.1.0'
	      		},
				ratio: 1,
				serverType: 'geoserver',
	    	});
	    	const newLayer = new ol.layer.Image({
				source: emdSource,
	    	});
			// 현재 레이어 제거
			if (currentLayer) {
				map.removeLayer(currentLayer);
			}
			// 현재 레이어 설정
			currentLayer = newLayer;
			// 새로운 레이어 추가
			map.addLayer(newLayer);
			
			// 해당 위치로 지도가 이동하도록 추가한 코드
			let data = {
			  admNm: selectedValue
			};

	    	fetch("dongan", {
		        method: "POST",
		        headers: {
					"Content-Type": "application/json"
	       		},
	        	body: JSON.stringify(data)
	      	})
			.then(response => response.json())
			.then(resp => {
				const coords = [resp[0].x, resp[0].y];
				const view = map.getView();
				view.animate({
					center: coords,
					duration: 500,
					zoom: 14
				});
		        console.log("동안구 들어옴 : ", resp);
		        console.log("x 들어옴 : ", resp[0].x);
		        console.log("y 들어옴 : ", resp[0].y);
			})
			.catch(error => {
	        	console.log(error);
	      	});

			// 통계 chart
			function chartDestroy() {
				if (myChart) {
			        console.log("체크: ");
			        myChart.destroy();
			    }
			}
		
			function chartData() {
			    // myChart 변수가 null이 아니라면, 즉 이전 차트가 활성화되어 있다면 파괴
			    if (myChart) {
			        myChart.destroy();
			    }
				fetch("chart", {
					method: "POST",
					headers: {
			        	"Content-Type": "application/json"
			        },
			        body: JSON.stringify({
			        	admNm: selectedValue
			        })
				})
		        .then(response => response.json())
		        .then(resp => {
			        const result = [resp.parkId, resp.martId, resp.hosId, resp.pharmaId, resp.subId, resp.busId];
			        const ctx = document.getElementById('myChart').getContext('2d');
			        const chart = new Chart(ctx, {
			            type: 'bar',
			            data: {
							labels: ['공원', '마트', '병원', '약국', '지하철역', '버스정류장'],
							datasets: [{
								label: "개수",
								data: result,
								Color: ['red', 'yellow', 'blue', 'pink', 'orange', 'black'],
								fill: false
							}]
			            }
					});
		        	console.log("ddsfsd 들어옴 : ", resp);
					myChart = chart;
					myChart.canvas.addEventListener('click', function(e) {
					    const activePoint = myChart.getElementAtEvent(e)[0];
					    if (activePoint) {
					        const datasetIndex = activePoint._datasetIndex;
					        const index = activePoint._index;
					        const label = myChart.data.labels[index];
					        const value = myChart.data.datasets[datasetIndex].data[index];
					        
					        // 막대를 클릭했을 때 실행될 함수 호출
					        // label과 value를 전달하여 해당 데이터 출력
					        showData(label, value);
					    }
					});

					function showData(label, value) {
					    // label과 value를 이용하여 해당 데이터 출력
					    console.log(label + " : " + value);
					}
				});
			}
			chartDestroy();
			chartData();
			console.log("myChart:",myChart)
//////////////////////////////////////////////////////			
			/* 공원 입력 */
			$("#modalGoId").on("click", () => {
				let inputText = $("input[name=park_addr]");
				
				let parkNm = $("#park_nm").val();
				let park_cate = $("#park_cate").val();
				let parkAddr = $("#park_addr").val();
				let parkArea = $("#park_area").val();
				let parkDong = $("#park_dong").val();
				let parkTel = $("#park_tel").val();
		
				
				let data = {
						parkNm : parkNm,
						parkCate : park_cate,
						parkAddr : parkAddr,
						parkArea : parkArea,
						parkTel : parkTel
				};
				
				if(!inputText.val()){
					swal("등록 실패!", "공원 주소를 입력해 주세요", "warning");
				}else{
					$.ajax({
						url : "parkIn",
						method : "POST",
						data : JSON.stringify(data),
						contentType : "application/json;charset=utf-8",
						dataType : "text",
						success : function(resp) {
							Swal.fire({
			                    icon: 'success',
			                    title: '등록 성공!',
			                    text: '공원 등록이 완료되었습니다.',
			                });
							chartDestroy(); 
							chartData();
							$("#park_nm").val("");
							$("#park_cate").val("");
							$("#park_addr").val("");
							$("#park_addr2").val("");
							$("#park_area").val("");
							$("#park_tel").val("");
							$("#park_dong").val("");
						},
						error : function(jqXHR, status, error) {
							console.log(jqXHR);
							console.log(status);
							console.log(error);
						}
					});
					
					$('.modall').css('display', 'none');
					
				}
			});
			/* 마트 입력 */
			$("#modalGoId2").on("click", () => {
				let inputText = $("input[name=mart_addr]");
				
				let martNm = $("#mart_nm").val();
				let martCate = $("#mart_cate").val();
				let martAddr = $("#mart_addr").val();
				let martDong = $("#mart_dong").val();
		
				
				let data = {
						martNm : martNm,
						martCate : martCate,
						martAddr : martAddr,
				};
				if(!inputText.val()){
					swal("등록 실패!", "마트 주소를 입력해 주세요", "warning");
				}else{
					$.ajax({
						url : "martIn",
						method : "POST",
						data : JSON.stringify(data),
						contentType : "application/json;charset=utf-8",
						dataType : "text",
						success : function(resp) {
							Swal.fire({
			                    icon: 'success',
			                    title: '등록 성공!',
			                    text: '마트 등록이 완료되었습니다.',
			                });
							chartDestroy(); 
							chartData();
							$("#mart_nm").val("");
							$("#mart_cate").val("");
							$("#mart_addr").val("");
							$("#mart_addr2").val("");
							$("#mart_dong").val("");
						},
						error : function(jqXHR, status, error) {
							console.log(jqXHR);
							console.log(status);
							console.log(error);
						}
					});
					
					$('.modall').css('display', 'none');
					
				}
			});
			/* 병원 입력 */
			$("#modalGoId3").on("click", () => {
				let inputText = $("input[name=hos_addr]");
				
				let dutyName = $("#duty_name").val();
				let dutyDivNam = $("#duty_div_nam").val();
				let dutyAddr = $("#hos_addr").val();
				let dutyTel = $("#duty_tel").val();
				let hosDong = $("#hos_dong").val();
		
				
				let data = {
						dutyName : dutyName,
						dutyDivNam : dutyDivNam,
						dutyAddr : dutyAddr,
						dutyTel : dutyTel,
				};
				
				if(!inputText.val()){
					swal("등록 실패!", "병원 주소를 입력해 주세요", "warning");
				}else{
					$.ajax({
						url : "hosIn",
						method : "POST",
						data : JSON.stringify(data),
						contentType : "application/json;charset=utf-8",
						dataType : "text",
						success : function(resp) {
							Swal.fire({
			                    icon: 'success',
			                    title: '등록 성공!',
			                    text: '병원 등록이 완료되었습니다.',
			                });
							chartDestroy(); 
							chartData();
							$("#duty_name").val("");
							$("#duty_div_nam").val("");
							$("#hos_addr").val("");
							$("#hos_addr2").val("");
							$("#duty_tel").val("");
							$("#hos_dong").val("");
						},
						error : function(jqXHR, status, error) {
							console.log(jqXHR);
							console.log(status);
							console.log(error);
						}
					});
					
					$('.modall').css('display', 'none');
					
				}
			});
			/* 약국 입력 */
			$("#modalGoId4").on("click", () => {
				let inputText = $("input[name=pharma_addr]");
				
				let dutyName = $("#pharma_name").val();
				let dutyAddr = $("#pharma_addr").val();
				let dutyTel1 = $("#duty_tel1").val();
				let pharmaDong = $("#pharma_dong").val();
		
				
				let data = {
						dutyName : dutyName,
						dutyAddr : dutyAddr,
						dutyTel1 : dutyTel1,
				};
				
				if(!inputText.val()){
					swal("등록 실패!", "약국 주소를 입력해 주세요", "warning");
				}else{
					$.ajax({
						url : "pharmaIn",
						method : "POST",
						data : JSON.stringify(data),
						contentType : "application/json;charset=utf-8",
						dataType : "text",
						success : function(resp) {
							Swal.fire({
			                    icon: 'success',
			                    title: '등록 성공!',
			                    text: '약국 등록이 완료되었습니다.',
			                });
							chartDestroy(); 
							chartData();
							$("#pharma_name").val("");
							$("#pharma_addr").val("");
							$("#pharma_addr2").val("");
							$("#duty_tel1").val("");
							$("#pharma_dong").val("");
						},
						error : function(jqXHR, status, error) {
							console.log(jqXHR);
							console.log(status);
							console.log(error);
						}
					});
					
					$('.modall').css('display', 'none');
					
				}
			});
			
			
			/* 공원 조회  */
			let parkSelectList = () => {
				$.ajax({
					url : "parkSelect",
					method : "post",
					data: JSON.stringify(data),
					contentType: "application/json;charset=utf-8",
					dataType : "json",
					success : function(result) {
						let trTags = [];
			            $.each(result, function(i, v){
		                	let trTag = $("<tr>").attr({
								"class":"parkSelectClass"
							}).append(
	                              $("<td>").html(v.parkNm).html($("<a>").attr({"href": "#", "title": v.parkNm}).html(v.parkNm).css({"text-decoration": "none", "color": "black"}))
	                              ,$("<td>").html(v.parkId).hidden   
	                              , $("<td>").html(v.parkArea)      
	                              , $("<td>").html(v.parkAddr).html($("<a>").attr({"href": "#", "title": v.parkAddr}).html(v.parkAddr).css({"text-decoration": "none", "color": "black"}))  
	                      	).data("parkData",v);
	         				trTags.push(trTag)
		            	});
		            	$("#park-tbody").html(trTags);
					},
					error : function(jqXHR, status, error) {
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});
			}
			parkSelectList();
			
			/* 공원 삭제 */
			$("#park-tbody").on('click', 'tr', function(event) {
			    console.log($(this).data("parkData"));
			    let parkData = $(this).data("parkData");
			    let parkId = parkData.parkId;
				
			    // 클릭했을때 색 변경
			    let $tr = $(event.currentTarget);
			    $tr.siblings('tr').removeClass("dblclick-on");
			    parkNm = $tr.data("parkNm");
			    $tr.addClass("dblclick-on");
			
			    $('#deleteBtn').on('click',function(event){
			        Swal.fire({
			            title: '데이터삭제',
			            text: '정말 삭제하시겠습니까?',
			            icon: 'warning',
			            showCancelButton: true,
			            confirmButtonColor: '#004262',
			            cancelButtonColor: '#ff3333',
			            confirmButtonText: "확인",
			            cancelButtonText: "취소"
			        }).then((result) => {
			        	
			            if(result.isConfirmed){
			                let data = {
			                    parkId : parkId
			                }
			                $.ajax({
			                    url : "parkDelete",
			                    method : "post",
			                    data : JSON.stringify(data),
			                    contentType: "application/json;charset=utf-8",
			                    dataType : "json",
			                    success : function(result) {
			                    	console.log("뭐야ㅑㅑㅑㅑㅑㅑ",result);
			                        if(result == 1){
			                            Swal.fire(
			                                '삭제성공!',
			                                '데이터가 삭제 되었습니다.',
			                                'success'
			                            );
			                            parkSelectList();
			                            chartDestroy(); 
			                            chartData();
			                        }else{
			                            Swal.fire(
			                                '삭제실패!',
			                                '데이터 삭제에 실패했습니다.',
			                                'error'
			                            );
			                        }
			                        
			                    },
			                    
			                    error : function(jqXHR, status, error) {
			                        console.log(jqXHR);
			                        console.log(status);
			                        console.log(error);
			                    }
			                });
			            } else{
			                Swal.fire('취소되었습니다')
			            }
			        });
			    });
			});
			
			/* 마트 조회  */
			let martSelectList = () => {
			    $.ajax({
			        url : "martSelect",
			        method : "post",
			        data: JSON.stringify(data),
			        contentType: "application/json;charset=utf-8",
			        dataType : "json",
			        success : function(result) {
			            let trTags = [];
			            $.each(result, function(i, v){
			                let trTag = $("<tr>").attr({
			                    "class":"martSelectClass"
			                }).append(
			                    $("<td>").html(v.fcltyNm).html($("<a>").attr({"href": "#", "title": v.fcltyNm}).html(v.fcltyNm).css({"text-decoration": "none", "color": "black"})),
			                    $("<td>").html(v.fcltyTy),
			                    $("<td>").html($("<a>").attr({"href": "#", "title": v.adres}).html(v.adres).css({"text-decoration": "none", "color": "black"})),
			                    $("<td>").html(v.conId).hidden 
			                ).data("martData",v);
			                trTags.push(trTag)
			            });
			            $("#mart-tbody").html(trTags);
			        },
			        error : function(jqXHR, status, error) {
			            console.log(jqXHR);
			            console.log(status);
			            console.log(error);
			        }
			    });
			}
			martSelectList();
			
			/* 마트 삭제 */
			$("#mart-tbody").on('click', 'tr', function(event) {
			    console.log($(this).data("martData"));
			    let conData = $(this).data("martData");
			    let conId = conData.conId;
				
			    // 클릭했을때 색 변경
			    let $tr = $(event.currentTarget);
			    $tr.siblings('tr').removeClass("dblclick-on");
			    martNm = $tr.data("martNm");
			    $tr.addClass("dblclick-on");
			
			    $('#deleteBtn').on('click',function(event){
			        Swal.fire({
			            title: '데이터삭제',
			            text: '정말 삭제하시겠습니까?',
			            icon: 'warning',
			            showCancelButton: true,
			            confirmButtonColor: '#004262',
			            cancelButtonColor: '#ff3333',
			            confirmButtonText: "확인",
			            cancelButtonText: "취소"
			        }).then((result) => {
			        	
			            if(result.isConfirmed){
			                let data = {
			                	conId : conId
			                }
			                $.ajax({
			                    url : "conDelete",
			                    method : "post",
			                    data : JSON.stringify(data),
			                    contentType: "application/json;charset=utf-8",
			                    dataType : "json",
			                    success : function(result) {
			                    	console.log("뭐야ㅑㅑㅑㅑㅑㅑ",result);
			                        if(result == 1){
			                            Swal.fire(
			                                '삭제성공!',
			                                '데이터가 삭제 되었습니다.',
			                                'success'
			                            );
			                            martSelectList();
			                            chartDestroy(); 
			                            chartData();
			                        }else{
			                            Swal.fire(
			                                '삭제실패!',
			                                '데이터 삭제에 실패했습니다.',
			                                'error'
			                            );
			                        }
			                        
			                    },
			                    
			                    error : function(jqXHR, status, error) {
			                        console.log(jqXHR);
			                        console.log(status);
			                        console.log(error);
			                    }
			                });
			            } else{
			                Swal.fire('취소되었습니다')
			            }
			        });
			    });
			});
			
			/* 병원 조회  */
			let hosSelectList = () => {
				$.ajax({
					url : "hosSelect",
					method : "post",
					data: JSON.stringify(data),
					contentType: "application/json;charset=utf-8",
					dataType : "json",
					success : function(result) {
						let trTags = [];
			            $.each(result, function(i, v){
// 			               console.log(v);
			            	let trTag = $("<tr>").attr({
								"class":"hosSelectClass"
							}).append(
		                              $("<td>").html(v.dutyName).html($("<a>").attr({"href": "#", "title": v.dutyName}).html(v.dutyName).css({"text-decoration": "none", "color": "black"}))        
		                              , $("<td>").html(v.dutyDivNam)      
		                              , $("<td>").html(v.dutyAddr).html($("<a>").attr({"href": "#", "title": v.dutyAddr}).html(v.dutyAddr).css({"text-decoration": "none", "color": "black"}))              
		                              , $("<td>").html(v.dutyTel).html($("<a>").attr({"href": "#", "title": v.dutyTel}).html(v.dutyTel).css({"text-decoration": "none", "color": "black"}))      
                  			).data("hosData",v);
     						trTags.push(trTag)
							});
					   	$("#hos-tbody").html(trTags);
					},
					error : function(jqXHR, status, error) {
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});
			}
			hosSelectList();
			
			/* 병원 삭제 */
			$("#hos-tbody").on('click', 'tr', function(event) {
			    console.log($(this).data("hosData"));
			    let hosData = $(this).data("hosData");
			    let hosId = hosData.hosId;
				
			    // 클릭했을때 색 변경
			    let $tr = $(event.currentTarget);
			    $tr.siblings('tr').removeClass("dblclick-on");
			    dutyName = $tr.data("dutyName");
			    $tr.addClass("dblclick-on");
			
			    $('#deleteBtn').on('click',function(event){
			        Swal.fire({
			            title: '데이터삭제',
			            text: '정말 삭제하시겠습니까?',
			            icon: 'warning',
			            showCancelButton: true,
			            confirmButtonColor: '#004262',
			            cancelButtonColor: '#ff3333',
			            confirmButtonText: "확인",
			            cancelButtonText: "취소"
			        }).then((result) => {
			        	
			            if(result.isConfirmed){
			                let data = {
			                	hosId : hosId
			                }
			                $.ajax({
			                    url : "hosDelete",
			                    method : "post",
			                    data : JSON.stringify(data),
			                    contentType: "application/json;charset=utf-8",
			                    dataType : "json",
			                    success : function(result) {
			                    	console.log("뭐야ㅑㅑㅑㅑㅑㅑ",result);
			                        if(result == 1){
			                            Swal.fire(
			                                '삭제성공!',
			                                '데이터가 삭제 되었습니다.',
			                                'success'
			                            );
			                            hosSelectList();
			                            chartDestroy(); 
			                            chartData();
			                        }else{
			                            Swal.fire(
			                                '삭제실패!',
			                                '데이터 삭제에 실패했습니다.',
			                                'error'
			                            );
			                        }
			                        
			                    },
			                    
			                    error : function(jqXHR, status, error) {
			                        console.log(jqXHR);
			                        console.log(status);
			                        console.log(error);
			                    }
			                });
			            } else{
			                Swal.fire('취소되었습니다')
			            }
			        });
			    });
			});
			/* 약국 조회  */
			let pharmaSelectList = () => {
				$.ajax({
					url : "pharmaSelect",
					method : "post",
					data: JSON.stringify(data),
					contentType: "application/json;charset=utf-8",
					dataType : "json",
					success : function(result) {
						let trTags = [];
			            $.each(result, function(i, v){
			               let aTag = $("<a>").html(v.hsptNo).attr({
			            	   "href":'#',
			            	   "class": "a_btn",
			            	   "onclick": "wardPatientDetail("+v.hsptNo+")"
			               });
// 			               console.log(v);
			               let trTag = $("<tr>").attr({
								"class":"pharmaSelectClass"
							}).append(
		                              $("<td>").html(v.dutyName)      
		                              , $("<td>").html(v.dutyAddr).html($("<a>").attr({"href": "#", "title": v.dutyAddr}).html(v.dutyAddr).css({"text-decoration": "none", "color": "black"}))        
		                              , $("<td>").html(v.dutyTel1)      
                 			).data("pharmaData",v);
    						trTags.push(trTag)
							});
					   	$("#pharma-tbody").html(trTags);
					},
					error : function(jqXHR, status, error) {
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});
			}
			pharmaSelectList();
		}
	    
	});
	
	/* 약국 삭제 */
	$("#pharma-tbody").on('click', 'tr', function(event) {
	    console.log($(this).data("pharmaData"));
	    let pharmaData = $(this).data("pharmaData");
	    let pharmaId = pharmaData.pharmaId;
		
	    // 클릭했을때 색 변경
	    let $tr = $(event.currentTarget);
	    $tr.siblings('tr').removeClass("dblclick-on");
	    dutyName = $tr.data("dutyName");
	    $tr.addClass("dblclick-on");
	
	    $('#deleteBtn').on('click',function(event){
	        Swal.fire({
	            title: '데이터삭제',
	            text: '정말 삭제하시겠습니까?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonColor: '#004262',
	            cancelButtonColor: '#ff3333',
	            confirmButtonText: "확인",
	            cancelButtonText: "취소"
	        }).then((result) => {
	        	
	            if(result.isConfirmed){
	                let data = {
	                	pharmaId : pharmaId
	                }
	                $.ajax({
	                    url : "pharmaDelete",
	                    method : "post",
	                    data : JSON.stringify(data),
	                    contentType: "application/json;charset=utf-8",
	                    dataType : "json",
	                    success : function(result) {
	                    	console.log("뭐야ㅑㅑㅑㅑㅑㅑ",result);
	                        if(result == 1){
	                            Swal.fire(
	                                '삭제성공!',
	                                '데이터가 삭제 되었습니다.',
	                                'success'
	                            );
	                            pharmaSelectList();
	                            chartDestroy(); 
	                            chartData();
	                        }else{
	                            Swal.fire(
	                                '삭제실패!',
	                                '데이터 삭제에 실패했습니다.',
	                                'error'
	                            );
	                        }
	                        
	                    },
	                    
	                    error : function(jqXHR, status, error) {
	                        console.log(jqXHR);
	                        console.log(status);
	                        console.log(error);
	                    }
	                });
	            } else{
	                Swal.fire('취소되었습니다')
	            }
	        });
	    });
	});
	/* 요소 입력 */
	$("#yosoGoBtn").on("click", () => {
		var dongNm  = document.getElementById("mySelect2");
		var seDongNm = (dongNm.options[dongNm.selectedIndex].value);
		console.log(seDongNm)
		var seDwlling = $('input[name=homeType]:checked').val();
		var seInflu = $('input[name=influType]:checked').val();
//			console.log("가져왔나???????", influType)
		let seBigPrice = $("#bigInput").val();
		let seMonthlyPrice = $("#smallInput").val();

		
		let data = {
				seDongNm : seDongNm,
				seBigPrice : seBigPrice,
				seMonthlyPrice : seMonthlyPrice,
				seDwlling : seDwlling,
				seInflu : seInflu,
		};
		console.log("뭐가뜰까요??????", data)
		let inputText = $("input[name=bigInput]");
			$.ajax({
				url : "yosoIn",
				method : "POST",
				data : JSON.stringify(data),
				contentType : "application/json;charset=utf-8",
				dataType : "text",
				success : function(resp) {
					Swal.fire({
	                    icon: 'success',
	                    title: '요소 등록 완료!',
	                    text: '등록된 요소는 마이페이지를 확인하세요',
	                });
					yosoSelectList();
					$("#bigInput").val("");
					$("#smallInput").val("");
					$('input[type="radio"]').prop('checked', false);
				},
				error : function(jqXHR, status, error) {
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
			$('.modall').css('display', 'none');

	});
	/* 요소 뿌려 */
	let yosoSelectList = () => {
		$.ajax({
			url : "yosoSelect",
			method : "get",
			contentType: "application/json;charset=utf-8",
			dataType : "json",
			success : function(result) {
				let trTags = [];
	            $.each(result, function(i, v){
	               console.log("모냥",v);
	               let trTag = $("<tr>").attr({
						"class":"yosoSelectClass"
					}).append(
                              $("<td>").html(v.seDongNm)      
                              , $("<td>").html(v.seDwlling)      
                              , $("<td>").html(v.seBigPrice)      
                              , $("<td>").html(v.seMonthlyPrice)      
                              , $("<td>").html(v.seInflu)    
               			).data("yosoData",v);
  						trTags.push(trTag)
					});
			   	$("#yoso-tbody").html(trTags);
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	}
	yosoSelectList();
  	/* 요소 삭제 */
  	$("#yoso-tbody").on('click', 'tr', function(event) {
	    console.log($(this).data("yosoData"));
	    let yosoData = $(this).data("yosoData");
	   
	    let seNo = yosoData.seNo;
		
	    // 클릭했을때 색 변경
	    let $tr = $(event.currentTarget);
	    $tr.siblings('tr').removeClass("dblclick-on");
	    seDongNm = $tr.data("seDongNm");
	    $tr.addClass("dblclick-on");
	
	    $('#deleteBtn2').on('click',function(event){
	        Swal.fire({
	            title: '데이터삭제',
	            text: '정말 삭제하시겠습니까?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonColor: '#004262',
	            cancelButtonColor: '#ff3333',
	            confirmButtonText: "확인",
	            cancelButtonText: "취소"
	        }).then((result) => {
	        	
	            if(result.isConfirmed){
	                let data = {
	                		seNo : seNo
	                }
	                $.ajax({
	                    url : "yosoDelete",
	                    method : "post",
	                    data : JSON.stringify(data),
	                    contentType: "application/json;charset=utf-8",
	                    dataType : "json",
	                    success : function(result) {
	                    	console.log("야이야이야이양",result);
	                        if(result == 1){
	                            Swal.fire(
	                                '삭제성공!',
	                                '데이터가 삭제 되었습니다.',
	                                'success'
	                            );
	                            yosoSelectList();
	                        }else{
	                            Swal.fire(
	                                '삭제실패!',
	                                '데이터 삭제에 실패했습니다.',
	                                'error'
	                            );
	                        }
	                        
	                    },
	                    
	                    error : function(jqXHR, status, error) {
	                        console.log(jqXHR);
	                        console.log(status);
	                        console.log(error);
	                    }
	                });
	            } else{
	                Swal.fire('취소되었습니다')
	            }
	        });
	    });
	});
  	const select2 = document.getElementById("mySelect2");
	const selectedValue = select2.value;
	
	$("#yoso-tbody").on('click', 'tr', function(event) {
		
	  	let yosoData = $(this).data("yosoData");
		console.log("요소ㅇ오옹", yosoData)
	  	/* 분석 완료된 주거적지 하예*/
			let admNm = yosoData.seDongNm;
			let seBigPrice = yosoData.seBigPrice;
			let seMonthlyPrice = yosoData.seMonthlyPrice;
			let seDwlling = yosoData.seDwlling;
			let seInflu = yosoData.seInflu;
			console.log("seInflu드디어 왔k", seDwlling)
// 			let yosoData = $("#yosoData").val();
	// 		let parkTel = $("#park_tel").val();
	// 		let parkTel = $("#park_tel").val();
			
			$('#insertBtn').on('click',function(event){
				 Swal.fire({
			            title: '데이터분석',
			            text: '정말 분석하시겠습니까?',
			            icon: 'success',
			            showCancelButton: true,
			            confirmButtonColor: '#004262',
			            cancelButtonColor: '#ff3333',
			            confirmButtonText: "확인",
			            cancelButtonText: "취소"
			        }).then((result) => {
				
				if(result.isConfirmed){
					let data = {
							admNm : admNm,
							aptBigPr : seBigPrice,
							opBigPri : seBigPrice,
							daBigPri : seBigPrice,
							aptMontly : seMonthlyPrice,
							opMontly_ : seMonthlyPrice,
							daMontly_ : seMonthlyPrice,
		 					aptGubun : seDwlling,
		 					opGubun : seDwlling,
		 					daGubun : seDwlling,
					};
					console.log("외않되??????",data)
					$.ajax({
						url : "${pageContext.request.contextPath}/ACSelect",
						data: JSON.stringify(data),
						method : "post",
						contentType: "application/json;charset=utf-8",
						dataType : "json",
						success : function(result) {
							let trTags = [];
				            $.each(result, function(i, data){
				            	console.log("옴???????",data);
				            	$.each(data, function(j, value){
				            		console.log("여기는!????????",value);
					            	if(seDwlling == '아파트'){
		// 			            		if(seInflu == '병원'){
		// 			            			let code = 
		// 			            		}else if(seInflu == '마트'){
		// 			            			let code1 = 
		// 			            		}
					            		
						                let trTag = $("<tr>").attr({
											"class":"analySelectClass"
										}).append(
					                              $("<td>").html(value.aptAddr)
					                              , $("<td>").html(value.aptDangi).html($("<a>").attr({"href": "#", "title": value.aptDangi}).html(value.aptDangi).css({"text-decoration": "none", "color": "black"})) 
					                              , $("<td>").html(value.aptCate)      
					                              , $("<td>").html(value.aptBigPr)      
					                              , $("<td>").html(value.aptMontly)
					                              , $("<td>").html(value.parkNm).html($("<a>").attr({"href": "#", "title": value.parkNm}).html(value.parkNm).css({"text-decoration": "none", "color": "black"}))      
					                              , $("<td>").html(value.parkArea)      
					                              , $("<td>").html(value.conId)    
					                              , $("<td>").append($("<img class='jjimaBtn'>").attr({
													  "src": "${pageContext.request.contextPath }/resources/images/텅빈하트.png",
													  "style": "width: 17px;"
												  }))
					               			).data("analyData",value);
					  						trTags.push(trTag)
			            	}else if (seDwlling == '오피스텔'){
			            		
			            		let trTag = $("<tr>").attr({
									"class":"analySelectClass"
								}).append(
			                              $("<td>").html(value.opAddr)      
			                              , $("<td>").html(value.opDangi).html($("<a>").attr({"href": "#", "title": value.opDangi}).html(value.opDangi).css({"text-decoration": "none", "color": "black"}))      
			                              , $("<td>").html(value.opCate)      
			                              , $("<td>").html(value.opBigPri)      
			                              , $("<td>").html(value.opMontly)
			                              , $("<td>").html(value.parkNm).html($("<a>").attr({"href": "#", "title": value.parkNm}).html(value.parkNm).css({"text-decoration": "none", "color": "black"}))        
			                              , $("<td>").html(value.parkArea)      
			                              , $("<td>").html(value.conId)    
			                              , $("<td>").append($("<img class='jjimaBtn'>").attr({
											  "src": "${pageContext.request.contextPath }/resources/images/텅빈하트.png",
											  "style": "width: 17px;"
										  }))
			               			).data("analyData",value);
			  						trTags.push(trTag)
			            	}else{
			            		console.log('test')
			            		console.log(value)
			            		let trTag = $("<tr>").attr({
									"class":"analySelectClass"
								}).append(
			                              $("<td>").html(value.daAddr)  
			                              , $("<td>").html(value.daBuildN).html($("<a>").attr({"href": "#", "title": value.daBuildN}).html(value.daBuildN).css({"text-decoration": "none", "color": "black"}))       
			                              , $("<td>").html(value.daCate)      
			                              , $("<td>").html(value.daBigPri)
			                              , $("<td>").html(value.daMontly)
			                              , $("<td>").html(value.parkNm).html($("<a>").attr({"href": "#", "title": value.parkNm}).html(value.parkNm).css({"text-decoration": "none", "color": "black"}))       
			                              , $("<td>").html(value.parkArea)      
			                              , $("<td>").html(value.conId)    
			                              , $("<td>").append($("<img class='jjimaBtn'>").attr({
											  "src": "${pageContext.request.contextPath }/resources/images/텅빈하트.png",
											  "style": "width: 17px;"
										  }))
			               			).data("analyData",value);
			  						trTags.push(trTag)
				            	}
				            
			            	})
			               
						});
					   	$("#analy-tbody").html(trTags);
// 					   	let obj = $tr.data("analyData")
// 					   	새로만든티알.data("afa",obj)
					 
					},
					error : function(jqXHR, status, error) {
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});
				
				} else{
	                Swal.fire('취소되었습니다')
	            }
			 });
		});	
	});
// 	let trTag = $("<tr>").attr({
// 		"class":"analySelectClass"
// 	}).append(
//               $("<td>").html(value.daAddr)  
//               , $("<td>").html(value.daBuildN)      
//               , $("<td>").html(value.daCate)      
//               , $("<td>").html(value.daBigPri)      
//               , $("<td>").html(value.daMontly_)
//               , $("<td>").html(value.parkNm)      
//               , $("<td>").html(value.parkArea)      
//               , $("<td>").html(value.conId)    
//               , $("<td>").append($("<img class='jjimaBtn'>").attr({
// 				  "src": "${pageContext.request.contextPath }/resources/images/텅빈하트.png",
// 				  "style": "width: 17px;"
// 			  }))
// 			).data("analyData",value);
	$(document).on("click", ".jjimaBtn", function() {
    if ($(this).attr("src") === "${pageContext.request.contextPath }/resources/images/텅빈하트.png") {
        $(this).attr("src", "${pageContext.request.contextPath }/resources/images/꽉찬하트.png");
        // 찜했을 때
        let tr = $("#analy-tbody").find("tr.dblclick-on");
        console.log(tr, tr.data("analyData"));
        let copyTr = tr.clone(true);
        copyTr.appendTo("#jjim-tbody");

        // 삭제 버튼 이벤트 처리
        copyTr.find(".jjimaBtn").attr("src", "${pageContext.request.contextPath }/resources/images/꽉찬하트.png");
        copyTr.on("click", function() {
            let analyTr = $("#analy-tbody").find(`tr[data-analy-data='${tr.data("analyData")}']`);
            analyTr.find(".jjimaBtn").attr("src", "${pageContext.request.contextPath }/resources/images/텅빈하트.png");
            $(this).remove();
        });

    } else {
        $(this).attr("src", "${pageContext.request.contextPath }/resources/images/텅빈하트.png");
    }
});

	//하예하예
$("#analy-tbody").on('click', 'tr', function(event) {
  // 클릭했을때 색 변경
  let $tr = $(event.currentTarget);
  $tr.siblings('tr').removeClass("dblclick-on");
  seDongNm = $tr.data("seDongNm");
  $tr.addClass("dblclick-on");
//   const cqlFilter = "adm_nm like '%" + selectedValue + "%'";
//   const emdSource = new ol.source.ImageWMS({
//     url: 'http://localhost:8888/geoserver/wms',
//     params: {
//       'LAYERS': 'haye:buldingeeeee',
//       'CQL_FILTER': cqlFilter,
//       VERSION: '1.1.0'
//     },
//     ratio: 1,
//     serverType: 'geoserver',
//   });
//   const newLayer = new ol.layer.Image({
//     source: emdSource,
//   });

//   // 새 레이어를 맵에 추가
//   map.addLayer(newLayer);

//   // 해당 지역으로 지도 이동
//   const view = map.getView();
//   const extent = emdSource.getExtent();
//   view.fit(extent, {duration: 1000});
});
  	
	/* 아파트pop */
	const aptPop = document.getElementById('aptBtn');
	aptPop.addEventListener('click', function() {
		console.log("왔 쮸??!")
		selectAptPop();
		function selectAptPop(selectedValue, event) {
			var view = map.get('view');
			
			var emdSource = new ol.source.ImageWMS({
				url: 'http://localhost:8888/geoserver/wms',
				params: {
					'LAYERS': 'haye:apt',
					VERSION: '1.1.0'
				},
				ratio: 1,
				serverType: 'geoserver',
			});

			const element = popup.getElement();
		  
			console.log("element???",element);
			map.on('singleclick', function(event) {
				 // 기존 팝업 닫기
			      let element = popup.getElement();
			      let popover = bootstrap.Popover.getInstance(element);
			      if (popover) {
			        popover.dispose();
			      }

				popup.setPosition(event.coordinate)
				let viewResolution = view.getResolution();
				let url = emdSource.getFeatureInfoUrl(
					event.coordinate,
					viewResolution,
					'EPSG:5181',
					{'INFO_FORMAT' : 'application/json'}
				);
				if (url) {
					fetch(url)
						.then(function(response) { return response.json(); })
						.then(function(json) {
							console.log("아빨뜨 머냥", json)
							let element = popup.getElement();
							let popover = bootstrap.Popover.getInstance(element);
							if (popover) {
								popover.dispose();
							}
							if (json.features.length > 0) {
								popover = new bootstrap.Popover(element, {
									animation: false,
									container: element,
									content: '<code>' + json.features[0].properties.apt_cate + '</code><br>'+
									         '동네 : ' + '<code>' + json.features[0].properties.sgg_nm + '</code><br>'+
									         '주소 : ' + '<code>' + json.features[0].properties.apt_addr + '</code><br>'+
									         '단지명 : ' + '<code>' + json.features[0].properties.apt_dangi + '</code><br>'+
									         '전세/보증금 : ' + '<code>' + json.features[0].properties.apt_big_pr + '</code>'+ '만원' +'<br>'+
									         '월세 : ' + '<code>' + json.features[0].properties.apt_montly + '</code>'+ '만원',
									html: true,
									placement: 'top',
									title: '여기가 어디?',
		        	  			});
		        	  			popover.show();
		        			}
							// 팝업 닫기 버튼 클릭 이벤트 리스너 추가
							const closeButton = document.querySelector('.popover-close-button');
							if (closeButton) {
		            			closeButton.addEventListener('click', () => {
									let element = popup.getElement();
									let popover = bootstrap.Popover.getInstance(element);
									if (popover) {
										popover.dispose();
									}
									popup.setPosition(undefined);
								});
							}
							// 해당 위치로 지도가 이동하도록 추가한 코드
							const coords = event.coordinate;
							const view = map.getView();
		          			view.animate({
								center: coords,
								duration: 500,
								zoom: 18
		          			});
	        			});
				}
			});
		}
	});
	
	/* 다세대 Pop */
	const dasedePop = document.getElementById('dasedeBtn');
	dasedePop.addEventListener('click', function() {
		console.log("왔 니?!")
		selectDasedePop();
		function selectDasedePop(selectedValue, event) {
			var view = map.get('view');
			
			var emdSource = new ol.source.ImageWMS({
				url: 'http://localhost:8888/geoserver/wms',
				params: {
					'LAYERS': 'haye:dasede',
					VERSION: '1.1.0'
				},
				ratio: 1,
				serverType: 'geoserver',
			});

			const element = popup.getElement();
		  
			console.log("element???",element);
			map.on('singleclick', function(event) {
				 // 기존 팝업 닫기
			      let element = popup.getElement();
			      let popover = bootstrap.Popover.getInstance(element);
			      if (popover) {
			        popover.dispose();
			      }

				popup.setPosition(event.coordinate)
				let viewResolution = view.getResolution();
				let url = emdSource.getFeatureInfoUrl(
					event.coordinate,
					viewResolution,
					'EPSG:5181',
					{'INFO_FORMAT' : 'application/json'}
				);
				if (url) {
					fetch(url)
						.then(function(response) { return response.json(); })
						.then(function(json) {
							
							let element = popup.getElement();
							let popover = bootstrap.Popover.getInstance(element);
							if (popover) {
								popover.dispose();
							}
							if (json.features.length > 0) {
								popover = new bootstrap.Popover(element, {
									animation: false,
									container: element,
									content: '<code>' + json.features[0].properties.da_cate + '</code><br>'+
									         '동네 : ' + '<code>' + json.features[0].properties.sgg_nm + '</code><br>'+
									         '주소 : ' + '<code>' + json.features[0].properties.da_addr + '</code><br>'+
									         '건물번호 : ' + '<code>' + json.features[0].properties.da_build_n + '</code><br>'+
									         '전세/보증금 : ' + '<code>' + json.features[0].properties.da_big_pri + '</code>'+ '만원' +'<br>'+
									         '월세 : ' + '<code>' + json.features[0].properties.da_montly_ + '</code><br>' + '만원',
									html: true,
									placement: 'top',
									title: '여기가 어디?',
		        	  			});
		        	  			popover.show();
		        			}
							// 팝업 닫기 버튼 클릭 이벤트 리스너 추가
							const closeButton = document.querySelector('.popover-close-button');
							if (closeButton) {
		            			closeButton.addEventListener('click', () => {
									let element = popup.getElement();
									let popover = bootstrap.Popover.getInstance(element);
									if (popover) {
										popover.dispose();
									}
									popup.setPosition(undefined);
								});
							}
							// 해당 위치로 지도가 이동하도록 추가한 코드
							const coords = event.coordinate;
							const view = map.getView();
		          			view.animate({
								center: coords,
								duration: 500,
								zoom: 18
		          			});
	        			});
				}
			});
		}
	});
	
	
// 	const dongPop = document.getElementById('searchButton');
// 	// 동이름 팝업
// 	dongPop.addEventListener('click', function() {
// 	  addEmd();
// 	  function addEmd(selectedValue, event) {
// 	    var view = map.get('view');
	    
// 	    var emdSource = new ol.source.ImageWMS({
// 	        url: 'http://localhost:8888/geoserver/wms',
// 	        params: {
// 	            'LAYERS': 'haye:dongan',
// 	            VERSION: '1.1.0'
// 	        },
// 	        ratio: 1,
// 	        serverType: 'geoserver',
// 	    });
	    
// 	    const element = popup.getElement();

// 	    console.log("element???",element)
// 	    map.on('singleclick', function(event) {
// 	      // 기존 팝업 닫기
// 	      let element = popup.getElement();
// 	      let popover = bootstrap.Popover.getInstance(element);
// 	      if (popover) {
// 	        popover.dispose();
// 	      }

// 	      popup.setPosition(event.coordinate)
// 	      var view = map.get('view');
// 	      var emdSource = new ol.source.ImageWMS({
// 	        url: 'http://localhost:8888/geoserver/wms',
// 	        params: {
// 	          'LAYERS': 'haye:dongan',
// 	          VERSION: '1.1.0'
// 	        },
// 	        ratio: 1,
// 	        serverType: 'geoserver',
// 	      });

// 	      let viewResolution = view.getResolution();
// 	      let url = emdSource.getFeatureInfoUrl(
// 	        event.coordinate,
// 	        viewResolution,
// 	        'EPSG:5181',
// 	        {'INFO_FORMAT' : 'application/json'}
// 	      );
// 	      if (url) {
// 	        fetch(url)
// 	          .then(function(response) { return response.json(); })
// 	          .then(function(json) {
// 	            let element = popup.getElement();
// 	            let popover = bootstrap.Popover.getInstance(element);
// 	            if (popover) {
// 	              popover.dispose();
// 	            }
// 	            popover = new bootstrap.Popover(element, {
// 	              animation: false,
// 	              container: element,
// 	              content: '<code>' + json.features[0].properties.adm_nm + '</code>',
// 	              html: true,
// 	              placement: 'top',
// 	              title: '여기가 어디?',
// 	            });
// 	            popover.show();
// 	            // 팝업 닫기 버튼 클릭 이벤트 리스너 추가
// 	            const closeButton = document.querySelector('.popover-close-button');
// 	            if (closeButton) {
// 	              closeButton.addEventListener('click', () => {
// 	                let element = popup.getElement();
// 	                let popover = bootstrap.Popover.getInstance(element);
// 	                if (popover) {
// 	                  popover.dispose();
// 	                }
// 	                popup.setPosition(undefined);
// 	              });
// 	            }
// 	            // 해당 위치로 지도가 이동하도록 추가한 코드
// 	            const coords = event.coordinate;
// 	            const view = map.getView();
// 	            view.animate({
// 	              center: coords,
// 	              duration: 500,
// 	              zoom: 18
// 	            });
// 	          });
// 	      }
// 	    });
// 	  }
// 	});
	const opPop = document.getElementById('opBtn');
	console.log("opopopopopopop", opPop)
	
	opPop.addEventListener('click', function() {
		console.log("왔 니?!")
		selectOpPop();
		//오피스텔 실거래가 popover 
		function selectOpPop(selectedValue, event) {
			var view = map.get('view');
			
			var emdSource = new ol.source.ImageWMS({
				url: 'http://localhost:8888/geoserver/wms',
				params: {
					'LAYERS': 'haye:op',
					VERSION: '1.1.0'
				},
				ratio: 1,
				serverType: 'geoserver',
			});

			const element = popup.getElement();
		  
			console.log("element???",element);
			map.on('singleclick', function(event) {
				 // 기존 팝업 닫기
			      let element = popup.getElement();
			      let popover = bootstrap.Popover.getInstance(element);
			      if (popover) {
			        popover.dispose();
			      }

				popup.setPosition(event.coordinate)
				let viewResolution = view.getResolution();
				let url = emdSource.getFeatureInfoUrl(
					event.coordinate,
					viewResolution,
					'EPSG:5181',
					{'INFO_FORMAT' : 'application/json'}
				);
				if (url) {
					fetch(url)
						.then(function(response) { return response.json(); })
						.then(function(json) {
							let element = popup.getElement();
							let popover = bootstrap.Popover.getInstance(element);
							if (popover) {
								popover.dispose();
							}
							if (json.features.length > 0) {
								popover = new bootstrap.Popover(element, {
									animation: false,
									container: element,
									content: '<code>' + json.features[0].properties.op_cate + '</code><br>'+
									         '동네 : ' + '<code>' + json.features[0].properties.sgg_nm + '</code><br>'+
									         '주소 : ' + '<code>' + json.features[0].properties.op_addr + '</code><br>'+
									         '단지명 : ' + '<code>' + json.features[0].properties.op_dangi + '</code><br>'+
									         '전세/보증금 : ' + '<code>' + json.features[0].properties.op_big_pri + '</code>'+ '만원' +'<br>'+
									         '월세 : ' + '<code>' + json.features[0].properties.op_montly_ + '</code>' + '만원',
									html: true,
									placement: 'top',
									title: '여기가 어디?',
		        	  			});
		        	  			popover.show();
		        			}
							// 팝업 닫기 버튼 클릭 이벤트 리스너 추가
							const closeButton = document.querySelector('.popover-close-button');
							if (closeButton) {
		            			closeButton.addEventListener('click', () => {
									let element = popup.getElement();
									let popover = bootstrap.Popover.getInstance(element);
									if (popover) {
										popover.dispose();
									}
									popup.setPosition(undefined);
								});
							}
							// 해당 위치로 지도가 이동하도록 추가한 코드
							const coords = event.coordinate;
							const view = map.getView();
		          			view.animate({
								center: coords,
								duration: 500,
								zoom: 18
		          			});
	        			});
				}
			});
		}
	});
	///////////////////////////////////////////////////////////////////
	/* 공원 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
	// 이미지 클릭 이벤트 핸들러 등록
		$('#image1').click(() => {
			if (!layerAdded) {
			    // 레이어 추가
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
				        params: {
							'LAYERS': 'haye:park',
							VERSION: '1.1.0'
				        },
				        ratio: 1,
				        serverType: 'geoserver',
				        
					}),
				});
			    map.addLayer(ImgLayer);
			    layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 마트 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
	// 이미지 클릭 이벤트 핸들러 등록
		$('#image2').click(() => {
			if (!layerAdded) {
			    // 레이어 추가
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
				        params: {
							'LAYERS': 'haye:convenience',
							VERSION: '1.1.0'
				        },
				        ratio: 1,
				        serverType: 'geoserver',
				        zoom: 20
					}),
				});
			    map.addLayer(ImgLayer);
			    layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	$(document).ready(() => {
		var layerAdded = false;
	// 이미지 클릭 이벤트 핸들러 등록
		$('#image2').click(() => {
			if (!layerAdded) {
			    // 레이어 추가
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
				        params: {
							'LAYERS': 'haye:mart',
							VERSION: '1.1.0'
				        },
				        ratio: 1,
				        serverType: 'geoserver',
					}),
				});
			    map.addLayer(ImgLayer);
			    layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 버스정류장 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image7').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:bus',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
		    		}),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 지하철역 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image8').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:subway',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
		    		}),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 병원 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image3').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:hospital',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 약국 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image4').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:pharmacy',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	
	/* 메뉴2 생활안전정보 */
$(document).ready(() => {
  // 이미지 클릭 이벤트 핸들러 등록
  $('#image5').click(() => {
    // 패널 보이기
    $('#panel2').show();
    $('#panel4-1').hide();
    $('#panel5').hide();
    $('#panel4').hide();
  });

  // 패널 닫기 버튼 클릭 이벤트 핸들러 등록
  $('.close3').click(() => {
    // 패널 닫기
    $('#panel2').hide();
  });

  // 이미지 클릭 시 패널이 열려있을 때 패널 닫기
  $('#panel2').click((event) => {
    if ($(event.target).is('#panel2')) {
      $('#panel2').hide();
    }
  });
});
	
	/* 메뉴4 통계 */
	$(document).ready(() => {
		// 이미지 클릭 이벤트 핸들러 등록
		$('.chartbtn').click(() => {
		  // 패널 보이기
		  $('#panel4').show();
		  $('#panel5').hide();
		  $('#panel2').hide();
		});
		
		$('.close4').click(() => {
			$('#panel4').css('display', 'none'); // 모달 안 보이도록 함
			$('#panel4-1').hide(); 
			$('#panel2').hide(); 
		});
	});
	/* 메뉴4-1 */
	$(document).ready(() => {
		let isVisible = false; // 모달이 보이는지 여부를 저장하는 변수
		$('#sangsepTag').click(() => {
			if (isVisible) {
				$('#panel4-1').hide(); // 모달 숨기기
			} else {
				$('#panel4-1').show(); // 모달 보이기
			}
			isVisible = !isVisible; // 모달 상태를 변경
		});
	});
	/* 메뉴5 통계 */
	$(document).ready(() => {
		// 이미지 클릭 이벤트 핸들러 등록
		$('#image6').click(() => {
		  // 패널 보이기
		  $('#panel5').show();
		  $('#panel4').hide();
		  $('#panel2').hide();
		});
		
		$('.close5').click(() => {
			$('#panel5').hide(); 
		});
	});
	
	/* 공사중 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image10').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:cntwrk_sttus',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 산불 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image11').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:frfire_status',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 폐기물 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image11').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:frfire_status',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 화학(공장) 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image11').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:frfire_status',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 교통사고 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image12').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:traffic_safety',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 폐기물 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image14').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:pgm_status',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 화학(공장) 레이어 추가 */
	$(document).ready(() => {
		var layerAdded = false;
		$('#image15').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:hh_status',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	
	////////실거래가 레이어//////////////
	/* 아파트 */
	$(document).ready(() => {
		var layerAdded = false;
		$('.aptBtn').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:apt',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 다세대 */
	$(document).ready(() => {
		var layerAdded = false;
		$('.dasedeBtn').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:dasede',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	/* 오피스텔 */
	$(document).ready(() => {
		var layerAdded = false;
		$('.opBtn').click(() => {
			if (!layerAdded) {
				const ImgLayer = new ol.layer.Image({
					source: new ol.source.ImageWMS({
						url: 'http://localhost:8888/geoserver/wms',
						params: {
							'LAYERS': 'haye:op',
							VERSION: '1.1.0'
						},
						ratio: 1,
						serverType: 'geoserver',
				    }),
				});
				map.addLayer(ImgLayer);
				layerAdded = true;
			} else {
				// 레이어 제거
				map.removeLayer(map.getLayers().getArray()[map.getLayers().getArray().length - 1]);
				layerAdded = false;
			}
		});
	});
	
	
	
	
	/* 탭 */
	$(document).ready(function () {
		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content
		
		//On Click Event
		$("ul.tabs li").click(function () {
			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content
		
			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});
	});
	
	/* 모달 */
	// 등록 모달
	$('#image9').click(() => {
		$('.modal2').css('display', 'block'); // 모달 보이도록 함
	});
	$('.close2').click(() => {
		$('.modal2').css('display', 'none'); // 모달 안 보이도록 함
	});
	//주소 API) 카카오 //
	document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
		event.preventDefault();
	//카카오 지도 발생
	    new daum.Postcode({
	        oncomplete: function(data) { //선택시 입력값 세팅
//	             document.getElementById("address_kakao").value = data.address; // 주소 넣기
//	             document.querySelector("input[name=memAddr2]").focus(); //상세입력 포커싱
	            empAdd1.val(data.address); // 주소 넣기
	            document.querySelector("input[name=empAdd2]").focus(); //상세입력 포커싱
	        }
	    }).open();
	
	    return false;
	});
	
	
	// 화이트 레이어 이미지버튼에
	const image = document.getElementById('image5');

	image.addEventListener('click', function() {
	  whiteLayer.setVisible(!whiteLayer.getVisible());
	});
	// 주거적지 요소 등록 모달
	// 모달 열기 버튼 클릭 이벤트 핸들러 등록
    $('.yosoBtn').click(() => {
      $('.modall').css('display', 'block'); // 모달 보이도록 함
    });

    // 모달 닫기 버튼 클릭 이벤트 핸들러 등록
    $('.close').click(() => {
      $('.modall').css('display', 'none'); // 모달 안 보이도록 함
    });
	
	var tableTr = document.getElementsByClassName("tableTr");

	// row 선택 시 event
	for(var i = 0; i < tableTr.length; i++) {
	    $(tableTr).click(function(e) {
	        tableTrClick(e); 
	    });
	}

	var tableTr = document.getElementsByClassName("table-striped");

	// row 선택 시 event
	for(var i = 0; i < tableTr.length; i++) {
	    $(tableTr).click(function(e) {
	        tableTrClick(e); 
	    });
	}
	// row 선택 시 색깔 변경 나머지 원래대로
	function tableTrClick(e) {
	    if($(e.target.parentElement).hasClass("clickTr")) {
	        $(e.target.parentElement).removeClass('clickTr');
	    } else {
	        for(var i = 0; i < tableTr.length; i++) {
	            tableTr[i].classList.remove('clickTr');
	        }
	    }

	    $(e.target.parentElement).addClass('clickTr');
	}
	
	/* 모달 입력폼 변경 */
	    // 각 라디오 버튼에 대한 이벤트 추가
    document.getElementById("option1").addEventListener("click", function() {
        // 공원 관련 입력 폼 나타내기
        document.getElementById("park-form").style.display = "block";
        document.getElementById("mart-form").style.display = "none";
        document.getElementById("hos-form").style.display = "none";
        document.getElementById("pharm-form").style.display = "none";
        document.getElementById("modalGoId").style.display = "block";
    });
    document.getElementById("option2").addEventListener("click", function() {
        // 마트 관련 입력 폼 나타내기
        document.getElementById("park-form").style.display = "none";
        document.getElementById("mart-form").style.display = "block";
        document.getElementById("hos-form").style.display = "none";
        document.getElementById("pharm-form").style.display = "none";
        document.getElementById("modalGoId2").style.display = "block";
    });
    document.getElementById("option3").addEventListener("click", function() {
        // 병원 관련 입력 폼 나타내기
        document.getElementById("park-form").style.display = "none";
        document.getElementById("mart-form").style.display = "none";
        document.getElementById("hos-form").style.display = "block";
        document.getElementById("pharm-form").style.display = "none";
        document.getElementById("modalGoId3").style.display = "block";
    });
    document.getElementById("option4").addEventListener("click", function() {
        // 야국 관련 입력 폼 나타내기
        document.getElementById("park-form").style.display = "none";
        document.getElementById("mart-form").style.display = "none";
        document.getElementById("hos-form").style.display = "none";
        document.getElementById("pharm-form").style.display = "block";
        document.getElementById("modalGoId4").style.display = "block";
    });
    
    /* 패널4-1의 내용 */
    document.getElementById("option1-1").addEventListener("click", function() {
        // 공원 관련 입력 폼 나타내기
        document.getElementById("parkTable").style.display = "block";
        document.getElementById("martTable").style.display = "none";
        document.getElementById("hosTable").style.display = "none";
        document.getElementById("pharmTable").style.display = "none";
    });
    document.getElementById("option2-1").addEventListener("click", function() {
        // 공원 관련 입력 폼 나타내기
        document.getElementById("parkTable").style.display = "none";
        document.getElementById("martTable").style.display = "block";
        document.getElementById("hosTable").style.display = "none";
        document.getElementById("pharmTable").style.display = "none";
    });
    document.getElementById("option3-1").addEventListener("click", function() {
        // 공원 관련 입력 폼 나타내기
        document.getElementById("parkTable").style.display = "none";
        document.getElementById("martTable").style.display = "none";
        document.getElementById("hosTable").style.display = "block";
        document.getElementById("pharmTable").style.display = "none";
    });
    document.getElementById("option4-1").addEventListener("click", function() {
        // 공원 관련 입력 폼 나타내기
        document.getElementById("parkTable").style.display = "none";
        document.getElementById("martTable").style.display = "none";
        document.getElementById("hosTable").style.display = "none";
        document.getElementById("pharmTable").style.display = "block";
    });
    
    
    /* 카카오지도 */
	window.onload = function() {
		var addressKakaoButtons = document.querySelectorAll(".address_kakao_button");
		for (var i = 0; i < addressKakaoButtons.length; i++) {
	    	addressKakaoButtons[i].addEventListener("click", function() {
				var addressInput = this.parentElement.querySelector(".address_kakao");
				new daum.Postcode({
					oncomplete: function(data) {
						addressInput.value = data.address;
	        		}
	      		}).open();
	    	});
	  	}
	};
	
	</script>
</body>
