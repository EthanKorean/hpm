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
				<header id="header"> <a href="index.do" class="logo"><strong>인력관리시스템</strong>
					  by OCube</a>
				</header>
				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<h1 style="display:inline"> 김대현 연구원</h1> kdh19@Ocube.co.kr<br/>
					</div>
				</section>
					<section>
							<header class="major">
										<h2>인적사항</h2>
							</header>
						<table>
							<tbody>
								<tr>
									<th>생년월일</th><td></td>
									<th>주소</th><td colspan="4"></td>
									<td><a >검색</a></td>
								</tr>
								<tr>
									<th>졸업학교</th><td></td>
									<th>전공</th><td></td>
									<th>학위</th><td></td>
									<th>졸업년도</th><td></td>
								</tr>
								<tr>
									<th>직급</th><td></td>
									<th>경력기준직급</th><td></td>
									<th>졸업기준</th><td></td>
									<th>졸업기준직급</th><td></td>
								</tr>
							</tbody>
						</table>
						</section>
						<section>
						<header class="major">
										<h2>경력</h2>
							</header>
						<table>
							<tbody>
								<tr>
									<th>회사명</th><th>입사일자</th><th colspan="2">퇴사일자</th>
								</tr>
								<tr>
									<td>수지원넷소프트</td>
									<td>2016-12-01</td>
									<td>2018-01-31</td>
									<td><a>+</a></td>
								</tr>
								<tr>
									<td><input type="text"/></td>
									<td>
										<select></select>
									</td>
									<td>
										<select></select>
									</td>
									<td><a>-</a></td>
								</tr>
							</tbody>
						</table>
						</section>
						<section>
						<header class="major">
										<h2>보유 기술</h2>
							</header>
						<table>
							<tbody>
								<tr>
									<th colspan="8">Language</th>
								</tr>
								<tr>
									<td>영어</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
									<td>일본어</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
									<td>중국어</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th colspan="8">Program Language</th>
								</tr>
								<tr>
									<td>C</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
									<td>C++</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
									<td>Java</td>
										<td>
											<select>
												<option>--</option>
												<option>상</option>
												<option>중</option>
												<option>하</option>
											</select>
										</td>
									<td>C#</td>
									<td>
										<select>
											<option>--</option>
											<option>상</option>
											<option>중</option>
											<option>하</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>Object C</td>
										<td>
											<select>
												<option>--</option>
												<option>상</option>
												<option>중</option>
												<option>하</option>
											</select>
										</td>
									<td>Python</td>
										<td>
											<select>
												<option>--</option>
												<option>상</option>
												<option>중</option>
												<option>하</option>
											</select>
										</td>
									<td>Visual Basic</td>
										<td>
											<select>
												<option>--</option>
												<option>상</option>
												<option>중</option>
												<option>하</option>
											</select>
										</td>
								</tr>
							</tbody>
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

</body>
</html>