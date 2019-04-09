<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<c:url value='/assets/css/main.css'/>" />
<link rel="stylesheet" href="<c:url value='/assets/css/jquery.treemenu.css'/>"/>

<title>Ocube::인력관리시스템</title>
</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
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
											<li  class="category"><a>WEB/Server 분야</a>
												<ul>
													<li class="item"><a>HTML</a></li>
													<li class="item"><a>PHP</a></li>
													<li class="item"><a>ASP</a></li>
													<li class="item"><a>JSP</a></li>
													<li class="item"><a>CSS</a></li>
													<li class="item"><a>jQuery</a></li>
													<li class="item"><a>Javascript</a></li>
													<li class="item"><a>AWS</a></li>
													<li class="item"><a>DBA</a></li>
													<li class="item"><a>Server 구축</a></li>
												</ul>
											</li>
											<li class="category"><a>Application UI</a>
												<ul>
													<li class="item"><a>Android App</a></li>
													<li class="item"><a>iOS App</a></li>
													<li class="item"><a>Win App</a></li>
													<li class="item"><a>QT</a></li>
													<li class="item"><a>Kanzi</a></li>
													<li class="item"><a>Altia</a></li>
												</ul>
											</li>
											<li  class="category"><a>OS 별</a>
												<ul>
													<li class="item"><a>Linux</a></li>
													<li class="item"><a>QNX</a></li>
													<li class="item"><a>RTOS</a></li>
													<li class="item"><a>Android</a></li>
													<li class="item"><a>ROS</a></li>
													<li class="item"><a>Win</a></li>
													<li class="item"><a>Mobile</a></li>
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
	<c:import url="${url}/menu.do" />
	</div>
	<!-- Scripts -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="<c:url value='/assets/js/browser.min.js'/>"></script>
	<script src="<c:url value='/assets/js/breakpoints.min.js'/>"></script>
	<script src="<c:url value='/assets/js/util.js'/>"></script>
	<script src="<c:url value='/assets/js/main.js'/>"></script>
	<script src="<c:url value='/assets/js/config/jquery.treemenu_tech.js'/>"></script>
	<script src="<c:url value='/assets/js/config/evt_tech.js'/>"></script> 
	<script>
	$(function(){
	        $(".tree").treemenu({delay:300}).openActive();
	    });
	</script>
</body>
</html>
