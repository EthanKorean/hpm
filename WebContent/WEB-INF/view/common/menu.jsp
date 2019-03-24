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
					<li><a href="http://localhost:8080/hpm/index.do">Home</a></li>
					<li><a href="http://localhost:8080/hpm/employ/info.do">기술자조회</a></li>
					<li><a href="http://localhost:8080/hpm/personal_info.do">개인정보 수정</a></li>
					<li><a href="http://localhost:8080/hpm/employ/group/info.do">소속직원정보</a></li>
					<li><span class="opener">설정</span>
						<ul>
							<li><a href="http://localhost:8080/hpm/config/tech.do">기술 설정</a></li>
							<li><a href="http://localhost:8080/hpm/config/group.do">조직도 설정</a></li>
						</ul>
					</li>
				</ul>
				</nav>
			</div>
		</div>