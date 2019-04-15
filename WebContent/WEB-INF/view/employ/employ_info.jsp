<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<c:url value='/assets/css/main.css'/>" />
<link rel="stylesheet" href="<c:url value='/assets/css/tab-menu.css'/>" />
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
				<c:import url="${url}/header.do" />
				<section class="tab-menu" style="border:solid 0px #FFFFFF;padding:0px;">
					<h4>경력사항</h4>
					<ul class="list">
						<table>
							<tr>
								<td style="text-align:center">최소경력</td>
								<td></td>
								<td style="text-align:center">최대경력</td>
							</tr>
							<tr>
								<td><input type="text"/></td>
								<td>~</td>
								<td><input type="text"/></td>
							</tr>
						</table>
						<a href="javascript:void(0)"class="button" style="position:absolute;right:0px;">추가</a>
					</ul>
					<h4 class>Language</h4>
					<ul class="list">
						<table>
							<tr>
								<td colspan="4">
									<input type="checkbox" id="total" value="total">
									<label for="total" >전체선택</label>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="eng" name="language" value="영어">
									<label for="eng">영어</label>
								</td>
								<td>
								</td>
								<td>
									<input type="checkbox" id="china" name="language" value="중국어">
									<label for="china">중국어</label>
								</td>
								<td>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="japan" name="language" value="일본어">
									<label for="japan">일본어</label>
								</td>
								<td>
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
									<input type="checkbox" id="d" name="d">
									<label for="d">전체선택</label>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="C" name="C">
									<label for="C">C</label>
								</td>
								<td>
								</td>
								<td>
									<input type="checkbox" id="C++" name="C++">
									<label for="C++">C++</label>
								</td>
								<td>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="JAVA" name="JAVA">
									<label for="JAVA">JAVA</label>
								</td>
								<td>
								</td>
								<td>
									<input type="checkbox" id="C#" name="C#">
									<label for="C#">C#</label>
								</td>
								<td>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" id="Object C" name="Object C">
									<label for="Object C">Object C</label>
								</td>
								<td>
									<select>
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
				<section  class="box" style="padding:10px;margin:10px">
						<p id="search_condition">
								
						</p>
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
	<c:import url="${url}/menu.do" />
	</div>
	<!-- Scripts -->
	<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/assets/js/browser.min.js'/>"></script>
	<script src="<c:url value='/assets/js/breakpoints.min.js'/>"></script>
	<script src="<c:url value='/assets/js/util.js'/>"></script>
	<script src="<c:url value='/assets/js/main.js'/>"></script>
	<script src="<c:url value='/assets/js/tab-menu.js'/>"></script>
</body>
</html>