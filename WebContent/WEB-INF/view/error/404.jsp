<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/main.css" />
<title>OCube::인력관리시스템</title>
</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div style="margin:0px auto;">
		<div id="wrapper">
			<!-- Main -->
			<div id="main" class="box">
				<div class="inner">
					<header id="header"> <a href="http://localhost:8080/hpm/index.do" class="logo" style="margin:0px auto"><strong>OCube</strong>::인력관리시스템</a></header>
					<!-- Banner -->
					<br/>
					<div>
						<span class="image left">
							<img src="http://localhost:8080/hpm/assets/res/error.png"/> 
						</span>
						
						<h1  style="margin:auto 0px;text-align:center">404 Error</h1>
						<h2 style="margin:auto 0px;text-align:center">Not Found</h2><br/>
						<p style="margin:auto 0px;text-align:center">
							요청하신 페이지를 찾을 수 없습니다....
						</p><br/>
						<p style="margin:auto 0px;text-align:center" ><a class="button" id="back"> 뒤로</a> &nbsp; &nbsp; <a class="button" id="home"> 홈 </a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="http://localhost:8080/hpm/assets/js/jquery.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/browser.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/breakpoints.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/util.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/main.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#back").click(function(){
			window.history.back();
		})//click
		$("#home").click(function(){
			location.replace("http://localhost:8080/hpm/index.do");
		})//click
	})//ready
	</script>
</body>
</html>