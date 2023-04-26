<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="css/mdb.dark.min.css" /> -->
<link rel="stylesheet" href="css/icons/bootstrap-icons.css" />
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
	<jsp:include page="../common/header.jsp">
		<jsp:param value="${isLogin}" name="isLogin" />
		<jsp:param value="${isAdmin}" name="isAdmin" />
	</jsp:include>
	<div ng-controller="homeController" ng-app="app">
		<div class="container mt-4">

			<h2 class="mb-5">Hello youtube</h2>
			<div class="row g-5">
				<c:forEach var="video" items="${videos}">
					<div class="col-sm-12 col-md-4 col-lg-3 video-item"
						style="min-height: 100px;">
						<div class="card border-0 h-100 shadow-lg">
							<a href="${pageContext.request.contextPath}/watch?id=${video.id}"><img
								src="${video.poster}" class="card-img-top rounded" alt="poster"
								style="height: 200px; width: 100%" /></a>
							<div class="card-body">
								<h5 class="card-title video-title">${video.title}</h5>
								<div class="d-flex">
									<h7 class="card-title ">${video.views} views </h7>
								</div>
							</div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="../common/pagination.jsp">
			<jsp:param value="${totalPage}" name="totalPage" />
			<jsp:param value="${currentPage}" name="currentPage" />
			<jsp:param value="${pagesize}" name="pagesize" />
			<jsp:param value="${pageContext.request.contextPath}/home"
				name="baseUrl" />
			<jsp:param value="container mt-5 d-flex justify-content-center"
				name="className" />
			<jsp:param value="6" name="point" />
		</jsp:include>
	</div>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/mdb.min.js"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/home.js"></script>
</body>
</html>