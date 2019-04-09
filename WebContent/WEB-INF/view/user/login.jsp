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
.msg{text-align: center;margin:5px}
input{ime-mode:disabled; text-align: center; margin:2px;}
</style>
<script src="<c:url value='/assets/js/rsa/jsbn.js'/>"></script>
<script src="<c:url value='/assets/js/rsa/rsa.js'/>"></script>
<script src="<c:url value='/assets/js/rsa/prng4.js'/>"></script>
<script src="<c:url value='/assets/js/rsa/rng.js'/>"></script>
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
							<input type="text"		id="user_id" maxlength="45"	placeholder="OCube ID or E-Mail" 	autofocus="autofocus" tabindex="1" pattern="[A-Za-z0-9]*"/>
							<input type="password"	id="user_pw" maxlength="16"	placeholder="Password" 	tabindex="2"/><br/>
							<input type="hidden" id="RSAModulus" value="${RSAModulus}">
							<input type="hidden" id="RSAExponent" value="${RSAExponent}">
							<a id="msg" style="display:none"></a><br/>
							<a class="button" id="login_btn" tabindex="3">로그인</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/assets/assets/js/browser.min.js'/>"></script>
	<script src="<c:url value='/assets/assets/js/breakpoints.min.js'/>"></script>
	<script src="<c:url value='/assets/assets/js/util.js'/>"></script>
	<script src="<c:url value='/assets/hpm/assets/js/main.js'/>"></script>
	<script type="text/javascript">
		$(function(){
			let user_id=$("#user_id");
			let user_pw=$("#user_pw");
			let msg=$("#msg");
			user_id.focus();
			$("#login_btn").click(function(){
				msg.text("");
				if(user_id.val().trim()==""){
					user_id.focus();
					show_msg("아이디를 입력해주세요");
					return ;
				}//end if
				if(user_pw.val().trim()==""){
					user_pw.focus();
					show_msg("비밀번호를 입력해주세요");
					return ;
				}//end if
	         
	            // RSA 암호키 생성
	            let rsa = new RSAKey();
	            
	            rsa.setPublic($("#RSAModulus").val(), $("#RSAExponent").val());
	            let secondMmCode = rsa.encrypt(user_id.val().trim());
	            let secondMmPassword = rsa.encrypt(user_pw.val().trim());
				console.log(secondMmCode);
				console.log(secondMmPassword);
				let form_data= {
					userId:secondMmCode
					,userPw:secondMmPassword
					}
				console.log(form_data)
	            $.ajax({ 
	                  type: "post",  
	                  url: "http://localhost:8080/hpm/loginRSA.do",
	                  dataType: "json",
	                  data: form_data,
	                  error : function( xhr ){
	  					alert("문제발생"+xhr.statusCode());
	  					},//error
	                  success: function(data) {    
	                      if(data.state == true) {
	                          show_msg("success");
	                      } else if(data.state == false) {
	                         THIS.oWin.alert("로그인","로그인에 실패했습니다. <br> 아이디와 패스워드를 확인하세요.");
	                      } else {
	                         THIS.oWin.alert("로그인","잘못된 경로로 접근했습니다. <br>암호화 인증에 실패했습니다."); 
	                      } //end else
	                  } //success
	            });//ajax
			})//click
			// 한글 입력 방지
			 $(user_id).keyup(function(event){
		         if (!(event.keyCode >=37 && event.keyCode<=40)) {
		        	 let inputVal = $(this).val();
		             $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
		         }//end if
		    });//keyup
		    
			$(user_id).focusout(function() {
				if(user_id.val()==""){
					user_id.focus();	
					show_msg("아이디를 입력해주세요");
				}else{
					msg.css("display","none");
				}//end else
			});//focusout
			
			$(user_pw).focusout(function() {
				if(user_pw.val()==""){
					show_msg("비밀번호를 입력해주세요");
					user_pw.focus();
				}else{
					msg.css("display","none");
				}//end else
			});//focusout
			
			function show_msg(text){
				msg.css("display","block");
				msg.text(text);
			}//show_msg
		})//ready
	</script>
	
</body>
</html>