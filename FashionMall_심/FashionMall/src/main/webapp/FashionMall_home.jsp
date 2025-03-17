<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
	<script>
    var autoset_Time = setInterval(function() {
        // 현재 시간을 Date 객체로 가져옴
        var now = new Date();
        document.getElementById("currentTime").textContent = now.toLocaleTimeString('en-US', { hour12: false });
    }, 1000); // 1000ms = 1초마다 갱신
	</script>
	<style type="text/css">
		#currentTime {
			color:red;
		}
	</style>
</head>
<body>

	<div class="container py-4"></div>
	<%@ include file="FashionMall_menu.jsp"%>
	<%!String greeting = "패션몰에 오신 것을 환영합니다"; %>
	<% String tagline = "Welcome to Fashion Mall!";%>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">Fashion Mall</p>
		</div>
	</div>

	<div class="row align-items-md-stretch text-center">
		<div class="col-md-12">
			<div class="h-100 p-5">
				<h3><%=tagline %></h3>
				<%
			 		Date  now = new java.util.Date();
			 		
			 		SimpleDateFormat timeType = new SimpleDateFormat("HH:mm:ss");
					String currentTime = timeType.format(now);
			 	 %>
				<p>
					현재 접속 시각: <span id="currentTime"><%=currentTime %></span>
				</p>
			</div>
		</div>
		<a href="./FashionMall_list.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
	</div>
	<%@ include file="FashionMall_footer.jsp"%>
</body>
</html>