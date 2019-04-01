<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/main.css" />
<style type="text/css">
.actions{position:absolute;right:0px;bottom:0px}
.msg{color: #FFF;text-align: center;margin:5px}
input{ime-mode:disabled; text-align: center; margin:2px;}
</style>
<title>OCube::인력관리시스템</title>
</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div style="margin:0px auto;">
		<div id="wrapper">
			<!-- Main -->
			<div id="main" class="box">
				<div class="inner">
					<header id="header"> <a href="index.do" class="logo" style="margin:0px auto"><strong>OCube</strong>::인력관리시스템</a></header>
					<!-- Banner -->
					<section >
						<h1 style="max-width: 500px; margin:0px auto"> 사용자 인증</h1> 
						<div align="center" class="content"style="max-width: 500px; margin:0px auto" >
							<input type="text" 	 	maxlength="45"	placeholder="OCube ID or E-Mail" 	autofocus="autofocus" tabindex="1" pattern="[A-Za-z0-9]*"/>
							<input type="password" 	maxlength="16"	placeholder="Password" 	tabindex="2"/><br/>
							<span class="msg" id="msg"></span><br/>
							<a class="button" id="btn" tabindex="3">로그인</a>
						</div>
					</section>
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

</body>
</html>