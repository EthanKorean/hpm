<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/main.css" />
<link rel="stylesheet" href="http://localhost:8080/hpm/assets/css/tab-menu.css" />
<style type="text/css">
.actions{position:absolute;right:0px;bottom:0px}
div{height:auto;}
</style>
<title>Ocube::인력관리시스템</title>
</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner" >
				<!-- Header -->
				<header id="header"> <a href="index.do" class="logo"><strong>인력관리시스템</strong>
					  by OCube</a>
				</header>

				<section class="tab-menu" style="border:solid 0px #FFFFFF;padding:0px;">
					<h4 class="active">Language</h4>
					<ul class="list">
						<table>
							<tr>
								<td colspan="4">
									<input type="checkbox" id="total" name="total">
									<label for="total">전체선택</label>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="eng" name="eng" checked>
									<label for="eng">영어</label>
								</td>
								<td>
									<select>
										<option>전체</option>
										<option>상</option>
										<option>중</option>
										<option>하</option>
									</select>
								</td>
								<td>
									<input type="checkbox" id="china" name="china" >
									<label for="china">중국어</label>
								</td>
								<td>
									<select>
										<option>전체</option>
										<option>상</option>
										<option>중</option>
										<option>하</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="japan" name="japan">
									<label for="japan">일본어</label>
								</td>
								<td>
									<select>
										<option>전체</option>
										<option>상</option>
										<option>중</option>
										<option>하</option>
									</select>
								</td>
								<td colspan="2">
								</td>
							</tr>
						</table>
					</ul>
					<h4>Program Language</h4>
					<ul class="list">
						<table>
							<tr>
								<td colspan="4">
									<input type="checkbox" id="total" name="total">
									<label for="total">전체선택</label>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="C" name="C">
									<label for="C">C</label>
								</td>
								<td>
									<select>
										<option>전체</option>
										<option>상</option>
										<option>중</option>
										<option>하</option>
									</select>
								</td>
								<td>
									<input type="checkbox" id="C++" name="C++">
									<label for="C++">C++</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="JAVA" name="JAVA">
									<label for="JAVA">JAVA</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
								<td>
									<input type="checkbox" id="C#" name="C#">
									<label for="C#">C#</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="Object C" name="Object C">
									<label for="Object C">Object C</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
								<td>
									<input type="checkbox" id="Python" name="Python">
									<label for="Python">Python</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="Visual Basic" name="Visual Basic">
									<label for="Visual Basic">Visual Basic</label>
								</td>
								<td>
									<select>
											<option>전체</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
									</select>
								</td>
								<td colspan="2"></td>
							</tr>
						</table>
					</ul>
					<h4>WEB/Server 분야</h4>
						<ul class="list">
						</ul>
					<h4>Application UI</h4>
						<ul class="list">
						</ul>
					<h4>OS 별</h4>
						<ul class="list">
						</ul>
					<h4>General</h4>
						<ul class="list">
						</ul>
					<h4>Device 형태/기능별</h4>
						<ul class="list">
						</ul>
				</section>
				<section class="box" style="min-height:0px">
					<ul class="actions">
						<li><a href="#" class="button">검색</a></li>
					</ul>
				</section>
				<section>
					<table>
						<tr>
							<td>
								순번
							</td>
							<td>
								이름
							</td>
							<td>
								소속
							</td>
						</tr>
					</table>
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
	<script src="http://localhost:8080/hpm/assets/js/tab-menu.js"></script>
</body>
</html>