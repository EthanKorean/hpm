<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div id="sidebar">
			<div class="inner">
				<!-- Search -->
				<section id="search" class="alt">
				<form method="post" action="#">
					<input type="text" name="query" id="query" placeholder="Search" />
				</form>
				</section>
				<!-- Menu -->
				<nav id="menu"> <header class="major">
				<h2>Menu</h2>
				</header>
				<ul>
					<li><a href="<c:url value='/index.do'/>">Home</a></li>
					<li><a href="<c:url value='/employ/info.do'/>">기술자조회</a></li>
					<li><a href="<c:url value='/personal_info.do'/>">개인정보 수정</a></li>
					<li><a href="<c:url value='/employ/group/info.do'/>">소속직원정보</a></li>
					<li><span class="opener">설정</span>
						<ul>
							<li><a href="<c:url value='/config/tech.do'/>">기술 설정</a></li>
							<li><a href="<c:url value='/config/group.do'/>">조직도 설정</a></li>
						</ul>
					</li>
					<li><a href="<c:url value='/login.do'/>">로그인</a></li>
					<li><a href="<c:url value='/404error.do'/>">404에러</a></li>
				</ul>
				</nav>
			</div>
		</div>