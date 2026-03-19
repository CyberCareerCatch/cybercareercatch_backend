<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>질의문 답변 목록</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/member-management/job-check.css">
</head>

<body class="company-check-body">

	<div class="company-check-container">

		<header class="company-check-header">

			<div class="company-check-title">
				<a
					href="${pageContext.request.contextPath}/app/admin/admin-main.jsp">관리자
					페이지</a>
			</div>

			<nav class="company-check-menu">
				<a
					href="${pageContext.request.contextPath}/app/admin/member-management/member-info.jsp">회원
					관리</a> <a
					href="${pageContext.request.contextPath}/app/admin/main-management/qna-management.jsp">메인
					관리</a> <a
					href="${pageContext.request.contextPath}/app/admin/community-management/expo-schedule.jsp">커뮤니티
					관리</a>
			</nav>

			<a href="${pageContext.request.contextPath}/admin/logout.adfc"
				class="logout-btn">로그아웃</a>

		</header>

		<main class="company-check-main">

			<aside class="company-check-sidebar">

				<div class="company-check-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/qna-management.jsp">질의문
						관리</a>
				</div>

				<div class="company-check-sidebar-item company-check-active">
					<a
						href="${pageContext.request.contextPath}/app/admin/member-management/job-check.jsp">질의문
						답변 목록</a>
				</div>

				<div class="company-check-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/company-info.jsp">기업
						정보페이지</a>
				</div>

				<div class="company-check-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/roadmap-management.jsp">로드맵
						관리</a>
				</div>

			</aside>

			<section class="company-check-content">

				<div class="company-check-title-area">
					<h2>질의문 답변 목록</h2>
				</div>

				<div class="company-check-subtitle">회원들이 제출한 질의문 답변 목록</div>

				<c:forEach var="jobResult" items="${jobResultList}">
					<a
						href="${pageContext.request.contextPath}/admin/jobCheckDetail.adfc?jobResultNumber=${jobResult.jobResultNumber}"
						class="company-check-row">
						<div class="company-check-col number">${jobResult.jobResultNumber}</div>
						<div class="company-check-col id">user${jobResult.userNumber}</div>
						<div class="company-check-col company">${jobResult.userName}</div>
						<div class="company-check-col date">${jobResult.jobResultStatus}</div>
						<div class="company-check-col status">${jobResult.jobResultCreatedDate}</div>
					</a>
				</c:forEach>

				<div class="company-check-pagination">
					<span>&lt;</span> <a
						class="company-check-page company-check-page-active">1</a> <a
						class="company-check-page">2</a> <a class="company-check-page">3</a>
					<a class="company-check-page">4</a> <a class="company-check-page">5</a>
					<span>&gt;</span>
				</div>

			</section>

		</main>

	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/admin/member-management/job-check.js"></script>
</body>

</html>