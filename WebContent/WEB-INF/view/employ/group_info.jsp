<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<c:url value='/assets/css/main.css'/>" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style type="text/css">
.actions{position:absolute;right:0px;bottom:0px}
</style>
<title>Ocube::인력관리시스템</title>
</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<c:import url="${url}/header.do" />
				<!-- Banner -->
				<section id="banner" style="">
					<div class="content">
						<h1> 조직정보</h1> 
						<section id="search" class="alt">
							<form method="get" action="">
								<select style="display:inline;max-width:100px">
									<option>이름</option>
									<option>직책</option>
									<option>소속</option>
								</select>
									<input type="text" placeholder="입력해주세요" class="accessible-icon" style="display:inline; max-width:300px"/>
									<a class="button">확인</a>
							</form>
						</section>
					</div>
				</section>
				<section style="position:relative;background-color:#ff0000">
					<table>
						<thead>
							<tr>
								<th>No</th>
								<th>이름</th>
								<th>직책</th>
								<th>소속</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>직책</td>
								<td>소속</td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
			<div>
				<iframe src="<c:url value='/index.do'/>">하하하하</iframe>
			</div>
		</div>
	<!-- Sidebar -->
	<c:import url="${url}/menu.do" />
	</div>
	<!-- Scripts -->
	<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/assets/js/browser.min.js'/>"></script>
	<script src="<c:url value='/assets/js/breakpoints.min.js'/>"></script>
	<script src="<c:url value='/assets/js/util.js'/>"></script>
	<script src="<c:url value='/assets/js/main.js'/>"></script>
	
</body>
</html>