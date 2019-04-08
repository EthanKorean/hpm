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
									<li id="root"><span><a>OCube</a></span>
										<ul>
											<li><a>경영관리본부</a>
												<ul>
													<li><a>경영관리팀</a></li>
													<li><a>사업관리팀</a></li>
												</ul>
											</li>
											<li><a>기술마케팅본부</a>
												<ul>
													<li><a>개발팀</a></li>
													<li><a>마케팅팀</a></li>
												</ul>
											</li>
											<li><a>스마트카 사업본부</a>
												<ul>
													<li><a>스마트카 사업본부 1그룹</a>
														<ul>
															<li><a>1팀</a></li>
															<li><a>2팀</a></li>
														</ul>
													</li>
													<li><a>스마트카 사업본부 2그룹</a>
														<ul>
															<li><a>1팀</a></li>
															<li><a>2팀</a></li>
														</ul>
													</li>
												</ul>
											</li>
											<li><a>플랫폼 개발 그룹</a>
												<ul>
													<li><a>1팀</a></li>
													<li><a>2팀</a></li>
													<li><a>3팀</a></li>
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
							<a  id="edit_btn" style="display:none;" >편집</a>
							<a  id="modify_btn" style="display:none;" >수정</a>
							<a  id="delete_btn" style="display:none;" >삭제</a>
							<a  id="cancel_btn" style="display:none;" >취소</a>
							<section class="box" id="child_list_section" style="display:none;">
								<div>
									<a  class="button action" id="add_btn" style="display:block;top:0px;right:0px" >
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
	<script src="http://localhost:8080/hpm/assets/js/config/jquery.treemenu_group.js"></script>
  <script src="http://localhost:8080/hpm/assets/js/config/evt_group.js"></script> 
	<script>
	$(function(){
	        $(".tree").treemenu({delay:300}).openActive();
	    });
	</script>

</body>
</html>
