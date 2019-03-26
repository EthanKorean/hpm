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
				<!-- Header -->
				<header id="header"> <a href="index.do" class="logo"><strong>조직설정</strong>
					  by OCube</a>
				</header>
				<section>
					<div class="row">
						<div class="col-6 col-12-small" style="width:400px">
							<div class="box">
								<ul class="tree">
									<li ><span>OCube</span>
										<ul>
											<li><a href="#">경영관리본부</a>
												<ul>
													<li><a href="#">경영관리팀</a></li>
													<li><a href="#">사업관리팀</a></li>
												</ul>
											</li>
											<li><a href="#">기술마케팅본부</a>
												<ul>
													<li><a href="#">개발팀</a></li>
													<li><a href="#">마케팅팀</a></li>
												</ul>
											</li>
											<li><a href="#">스마트카 사업본부</a>
												<ul>
													<li><a href="#">스마트카 사업본부 1그룹</a>
														<ul>
															<li>1팀 </li>
															<li>2팀 </li>
														</ul>
													</li>
													<li><a href="#">스마트카 사업본부 2그룹</a>
														<ul>
															<li>1팀 </li>
															<li>2팀 </li>
														</ul>
													</li>
												</ul>
											</li>
											<li><a href="#">플랫폼 개발 그룹</a>
												<ul>
													<li>1팀 </li>
													<li>2팀 </li>
													<li>3팀 </li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-6 col-12-small">
							<h3>Definition tt</h3>
							<p>abcdddd</p>
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
	<script src="http://localhost:8080/hpm/assets/js/config/jquery.treemenu_group.js"></script> 
	<script>
	$(function(){
	        $(".tree").treemenu({delay:300}).openActive();
	    });
	</script>

</body>
</html>