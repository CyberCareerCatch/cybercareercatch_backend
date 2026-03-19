<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>질의문 답변 상세</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/member-management/job-checkdetail.css">
</head>

<body class="company-checkdetail-body">

	<div class="company-checkdetail-container">

		<header class="company-checkdetail-header">

			<div class="company-checkdetail-title">
				<a
					href="${pageContext.request.contextPath}/app/admin/admin-main.jsp">관리자
					페이지</a>
			</div>

			<nav class="company-checkdetail-menu">
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

		<main class="company-checkdetail-main">

			<aside class="company-checkdetail-sidebar">

				<div class="company-checkdetail-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/qna-management.jsp">질의문
						관리</a>
				</div>

				<div
					class="company-checkdetail-sidebar-item company-checkdetail-active">
					<a
						href="${pageContext.request.contextPath}/app/admin/member-management/job-check.jsp">질의문
						답변 목록</a>
				</div>

				<div class="company-checkdetail-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/company-info.jsp">기업
						정보페이지</a>
				</div>

				<div class="company-checkdetail-sidebar-item">
					<a
						href="${pageContext.request.contextPath}/app/admin/main-management/roadmap-management.jsp">로드맵
						관리</a>
				</div>

			</aside>

			<section class="company-checkdetail-content">

				<div class="company-checkdetail-top">
					<h2>질의문 답변 상세</h2>
				</div>

				<form
					action="${pageContext.request.contextPath}/admin/judgeJobResult.adfc"
					method="post">
					<input type="hidden" name="jobResultNumber"
						value="${detailInfo.jobResultNumber}">
					<div class="company-checkdetail-userbox">
						<div>
							<strong>아이디:</strong> ${detailInfo.userId}
						</div>
						<div>
							<strong>이름:</strong> ${detailInfo.userName}
						</div>
						<div>
							<strong>상태:</strong> ${detailInfo.jobResultStatus}
						</div>
						<div>
							<strong>제출일:</strong> ${detailInfo.jobResultCreatedDate}
						</div>
					</div>

					<c:forEach var="detail" items="${detailList}">
						<div class="company-checkdetail-question">
							<div class="company-checkdetail-qtitle">질문
								${detail.jobQuestionNumber}</div>
							<div class="company-checkdetail-qcontent">${detail.jobQuestionContentSnapshot}</div>
							<div class="company-checkdetail-acontent">${detail.answerContent}</div>
						</div>
					</c:forEach>

					<div class="company-checkdetail-jobbox">
						<div class="company-checkdetail-jobtitle">직군 선택</div>

						<label class="company-checkdetail-radio"> <input
							type="radio" name="jobNumber" value="1"> 보안컨설팅
						</label> <label class="company-checkdetail-radio"> <input
							type="radio" name="jobNumber" value="2"> 시스템/네트워크 엔지니어
						</label> <label class="company-checkdetail-radio"> <input
							type="radio" name="jobNumber" value="3"> 보안관제
						</label> <label class="company-checkdetail-radio"> <input
							type="radio" name="jobNumber" value="4"> 침해사고/디지털포렌식
						</label>
					</div>

					<div class="company-checkdetail-btnbox">
						<a href="${pageContext.request.contextPath}/admin/jobCheck.adfc"
							class="company-checkdetail-back">목록</a>
						<button type="submit" class="company-checkdetail-save">저장</button>
					</div>

				</form>

			</section>

		</main>

	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/admin/member-management/job-checkdetail.js"></script>
</body>

</html>