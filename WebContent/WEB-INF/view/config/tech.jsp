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
									<li id="root"><span><a href="javascript:void(0)">보유 기술</a></span>
										<ul>
											<li class="category" value="language"><a href="javascript:void(0)" >Language</a>
												<ul>
													<li  class="item" value="eng"><a href="javascript:void(0)">영어</a></li>
													<li  class="item" value="japan"><a href="javascript:void(0)">일본어</a></li>
													<li  class="item" value="china"><a href="javascript:void(0)">중국어</a></li>
												</ul>
											</li>
											<li  class="category"><a href="javascript:void(0)">Program</a>
												<ul>
													<li class="item"><a href="javascript:void(0)">C</a></li>
													<li class="item"><a href="javascript:void(0)">C++</a></li>
													<li class="item"><a href="javascript:void(0)">JAVA</a></li>
													<li class="item"><a href="javascript:void(0)">C#</a></li>
													<li class="item"><a href="javascript:void(0)">Object C</a></li>
													<li class="item"><a href="javascript:void(0)">Python</a></li>
													<li class="item"><a href="javascript:void(0)">Visual Basic</a></li>
												</ul>
											</li>
											<li  class="category"><a href="#">WEB/Server 분야</a>
												<ul>
													<li class="item"><a href="#">HTML</a></li>
													<li class="item"><a href="#">PHP</a></li>
													<li class="item"><a href="#">ASP</a></li>
													<li class="item"><a href="#">JSP</a></li>
													<li class="item"><a href="#">CSS</a></li>
													<li class="item"><a href="#">jQuery</a></li>
													<li class="item"><a href="#">Javascript</a></li>
													<li class="item"><a href="#">AWS</a></li>
													<li class="item"><a href="#">DBA</a></li>
													<li class="item"><a href="#">Server 구축</a></li>
												</ul>
											</li>
											<li class="category"><a href="#">Application UI</a>
												<ul>
													<li class="item"><a href="#">Android App</a></li>
													<li class="item"><a href="#">iOS App</a></li>
													<li class="item"><a href="#">Win App</a></li>
													<li class="item"><a href="#">QT</a></li>
													<li class="item"><a href="#">Kanzi</a></li>
													<li class="item"><a href="#">Altia</a></li>
												</ul>
											</li>
											<li  class="category"><a href="#">OS 별</a>
												<ul>
													<li class="item"><a href="#">Linux</a></li>
													<li class="item"><a href="#">QNX</a></li>
													<li class="item"><a href="#">RTOS</a></li>
													<li class="item"><a href="#">Android</a></li>
													<li class="item"><a href="#">ROS</a></li>
													<li class="item"><a href="#">Win</a></li>
													<li class="item"><a href="#">Mobile</a></li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div id="skill_detail" class="col-6 col-12-small">
							<h3 id="parent_category_h"></h3>
							<p id="skill_name_p"></p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							<input type="text" id="parent_category_input" style="display:none"/>
							<input type="text" id="skill_name_input"  style="display:none"/>
							<a href="javascript:void(0)" id="edit_btn" style="display:none;" >편집</a>
							<a href="javascript:void(0)" id="modify_btn" style="display:none;" >수정</a>
							<a href="javascript:void(0)" id="delete_btn" style="display:none;" >삭제</a>
							<a href="javascript:void(0)" id="cancel_btn" style="display:none;" >취소</a>
							<section class="box" id="child_list_section" style="display:none;">
								<div>
									<a href="javascript:void(0)" class="button action" id="add_btn" style="display:block;top:0px;right:0px" >
									추가</a>
								</div>
								<ul id = "item_list">
									
								</ul>
							</section>
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