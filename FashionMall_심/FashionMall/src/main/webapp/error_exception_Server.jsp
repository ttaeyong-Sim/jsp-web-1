<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>서버에서 에러가 발생했습니다</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="container py-4">
			<%@include file="FashionMall_menu.jsp" %>
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
				<div class = "container-fluid py-5">
					<h1 class="alert alert-danger">서버에서 에러가 발생했습니다</h1>
					<p>불편을 끼쳐드려 죄송합니다. 서버내부에서 요청하신 페이지를 처리하는 중 문제가 발생했습니다.<br>
					   잠시후 다시 시도해주세요</p>
				</div>
			</div>
		
		<div class="row align-items-md-stretch">
			<div class="col-md-12">
				<div class="h-100 p-5">
					<p> <%=request.getRequestURL()%>?데이터반환값:<%=request.getQueryString()%>
					<p> <a href="FashionMall_list.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
				</div>
			</div>
		</div>
		<%@ include file="FashionMall_footer.jsp" %>
		</div>
	</body>
</html>