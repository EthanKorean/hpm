<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/main.css" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/jquery.treemenu.css"/>
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
				<header id="header"> <a href="index.do" class="logo"><strong>기술 설정</strong>
					  </a>
				</header>
				<section>
					<div class="row">
						<div class="col-6 col-12-small" style="width:400px">
							<div class="box">
								<ul class="tree">
									<li ><span>Skill</span>
										<ul>
											<li value="language"><a href="javascript:void(0)" >Language</a>
												<ul>
													<li value="eng"><a href="javascript:void(0)">영어</a></li>
													<li value="japan"><a href="javascript:void(0)">일본어</a></li>
													<li value="china"><a href="javascript:void(0)">중국어</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0)">Program</a>
												<ul>
													<li><a href="javascript:void(0)">C</a></li>
													<li><a href="javascript:void(0)">C++</a></li>
													<li><a href="javascript:void(0)">JAVA</a></li>
													<li><a href="javascript:void(0)">C#</a></li>
													<li><a href="javascript:void(0)">Object C</a></li>
													<li><a href="javascript:void(0)">Python</a></li>
													<li><a href="javascript:void(0)">Visual Basic</a></li>
												</ul>
											</li>
											<li><a href="#">WEB/Server 분야</a>
												<ul>
													<li><a href="#">HTML</a></li>
													<li><a href="#">PHP</a></li>
													<li><a href="#">ASP</a></li>
													<li><a href="#">JSP</a></li>
													<li><a href="#">CSS</a></li>
													<li><a href="#">jQuery</a></li>
													<li><a href="#">Javascript</a></li>
													<li><a href="#">AWS</a></li>
													<li><a href="#">DBA</a></li>
													<li><a href="#">Server 구축</a></li>
												</ul>
											</li>
											<li><a href="#">Application UI</a>
												<ul>
													<li><a href="#">Android App</a></li>
													<li><a href="#">iOS App</a></li>
													<li><a href="#">Win App</a></li>
													<li><a href="#">QT</a></li>
													<li><a href="#">Kanzi</a></li>
													<li><a href="#">Altia</a></li>
												</ul>
											</li>
											<li><a href="#">OS 별</a>
												<ul>
													<li><a href="#">Linux</a></li>
													<li><a href="#">QNX</a></li>
													<li><a href="#">RTOS</a></li>
													<li><a href="#">Android</a></li>
													<li><a href="#">ROS</a></li>
													<li><a href="#">Win</a></li>
													<li><a href="#">Mobile</a></li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div id="skill_detail" class="col-6 col-12-small">
							<h3 id="parent_category_h"></h3>
							<p id="skill_name_p"></p>
							<input type="text" id="parent_category_input" style="display:none"/>
							<input type="text" id="skill_name_input"  style="display:none"/>
							<a href="#" id="edit_btn" style="display:none" >편집</a>
						</div>
						
					</div>
			 	</section>
			</div>
		</div>
	<!-- Sidebar -->
	<c:import url="http://localhost:8080/hpm/menu.do" />
	</div>
	<!-- Scripts -->
	<script src="http://localhost:8080/hpm/assets/js/jquery.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/browser.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/breakpoints.min.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/util.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/main.js"></script>
	<script src="http://localhost:8080/hpm/assets/js/config/jquery.treemenu_tech.js"></script> 
	<script src="http://localhost:8080/hpm/assets/js/config/tech_evt.js"></script> 
	<script>
	$(function(){
	        $(".tree").treemenu({delay:300}).openActive();
	    });
	</script>
</body>
</html>