<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<body>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<!-- -------------------------------jQuery--------------------------- -->
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<!-- ---------------------------------fotorama--------------------------- -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<link rel="stylesheet" href="css/a.css">

<style>
.board_view {
	border-collapse: collapse;
	border-top: 3px solid #168;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

.board_view th {
	color: #168;
	background: #f0f6f9;
	text-align: center;
	width: 20%;
}

.board_view th, .board_view td {
	padding: 10px;
	border: 1px solid #ddd;
}

.board_view th:first-child, .table td:first-child {
	border-left: 0;
}

.board_view th:last-child, .table td:last-child {
	border-right: 0;
}

.board_view tr td:first-child {
	text-align: center;
}

.board_view caption {
	caption-side: bottom;
	display: none;
}

.lnm {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	border: 1px solide #ddd;
}
p
.{
border: 1px solide #ddd;
margin: left;
}
</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".replyWriteBtn").on("click", function() {
							var formObj = $("form[name='replyForm']");
							formObj.attr("action", "/community/replyWrite");
							formObj.submit();
						});
						//댓글 수정 View
						$(".replyUpdateBtn")
								.on(
										"click",
										function() {
											location.href = "/community/replyUpdateView?bno=${view.bno}"
													+ "&rno="
													+ $(this).attr("data-rno");
										});

						//댓글 삭제 View
						$(".replyDeleteBtn")
								.on(
										"click",
										function() {
											location.href = "/community/replyDeleteView?bno=${view.bno}"
													+ "&rno="
													+ $(this).attr("data-rno");
										});
					})
</script>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	</div>

	<h2></h2>
	<table class="board_view" border="1">
	
		<tbody>
			<tr>
				<th>제목</th>
				<td>${view.title}</td>
				<th>조회수</th>
				<td>${view.viewCnt}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${view.writer}</td>
				<th>작성시간</th>
				<td>${view.regDate}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3" height="500px">${view.content}</td>
			</tr>
		</tbody>
	</table>
	
	<div class=lnm>
		<a href="/community/listPageSearch?num=1" id="list" class="btn">목록으로</a>
		<c:if test="${view.writer eq user.id}">
			<a href="/community/modify?bno=${view.bno}">게시물 수정</a>
			<a href="/community/delete?bno=${view.bno}">게시물 삭제</a>
		</c:if>
	</div>

	<!-- 댓글 -->
	<div id="reply">
		<ol class="replyList">
			<c:forEach items="${replyList}" var="replyList">
				<p>
					댓글 작성자 : ${replyList.writer} <br> 작성 날짜 : ${replyList.regdate}
					<br> 댓글 내용: ${replyList.content}
				</p>
					<div>
						<button type="button" class="replyUpdateBtn"
							data-rno="${replyList.rno}">수정</button>
						<button type="button" class="replyDeleteBtn"
							data-rno="${replyList.rno}">삭제</button>
					</div>
			</c:forEach>
		</ol>
	</div>
	<form name="replyForm" method="post">
		<input type="hidden" id="bno" name="bno" value="${view.bno}" /> <label
			for="writer">댓글 작성자</label> <input type="text" id="writer"
			name="writer" /> <label for="content">댓글 내용</label> <input
			type="text" id="content" name="content" />
		<button type="button" class="replyWriteBtn">작성</button>
	</form>

</body>
</html>