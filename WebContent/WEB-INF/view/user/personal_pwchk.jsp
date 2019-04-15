<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<c:url value='/assets/css/main.css'/>" />
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
				<section id="banner">
					<div class="content">
						<h1> 개인정보</h1> 
						${userName} (${userEmail})<br/>
						<input type="password" id="user_pw" placeholder="password" style="max-width:300px;display:inline;"/>
						<a id="auth_btn" class="button">확인</a><br/>
						<c:choose>
							<c:when test="empty ${msg}">
								<a id="msg" style="display:none"></a>
							</c:when>
							<c:otherwise>
								<a id="msg" style="display:inline">${msg}</a>
							</c:otherwise>
						</c:choose>
						
						<input type="hidden" id="RSAModulus" value="${RSAModulus}">
						<input type="hidden" id="RSAExponent" value="${RSAExponent}">
					</div>
				</section>
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
	<script src="<c:url value='/assets/js/rsa/jsbn.js'/>"></script>
	<script src="<c:url value='/assets/js/rsa/rsa.js'/>"></script>
	<script src="<c:url value='/assets/js/rsa/prng4.js'/>"></script>
	<script src="<c:url value='/assets/js/rsa/rng.js'/>"></script>
	<script type="text/javascript">
		$(function(){
			let $user_pw = $("#user_pw");
			let $msg 	= $("#msg");
			let $form	= $("<form></form>");
	        let obj		= document.createElement('input');
			$form.attr("action","${url}/hpm/personal_info.do");
	        $form.attr("method","post");
	        $form.appendTo('body');
			$("#auth_btn").click(function(){
				let user_pw= $user_pw.val();
				if(user_pw.trim()==""){
					showMsg("비밀번호를 입력해주세요");
					$user_pw.focus();
					return;
				}//end if
				let rsa = new RSAKey();
	            rsa.setPublic($("#RSAModulus").val(), $("#RSAExponent").val());
	            user_pw = rsa.encrypt(user_pw.trim());
	            obj.setAttribute("type","hidden");
	            obj.setAttribute("name","userPw");
	            obj.setAttribute("value",user_pw);
	            $form.append(obj);
	            $form.submit();
			})//click
			
			function showMsg(text){
				$msg.css("display","inline");
				$msg.text(text);
			}//end
		});//ready
	</script>
</body>
</html>