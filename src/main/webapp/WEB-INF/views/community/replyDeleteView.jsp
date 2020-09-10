<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/community/view?bno=${replyDelete.bno}";
			})
			
		})
		
	</script>
<body>

	<div id="header">
		<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	</div>
	<div id="root">
		<header>
			<h1>게시판</h1>
		</header>
		<section id="container">
			<form name="updateForm" role="form" method="post"
				action="/community/replyDelete">
				<input type="hidden" name="bno" value="${replyDelete.bno}"
					readonly="readonly" /> <input type="hidden" id="rno" name="rno"
					value="${replyDelete.rno}" />

				<div>
					<p>삭제 하시겠습니까?</p>
					<button type="submit" class="delete_btn">예 삭제합니다.</button>
					<button type="button" class="cancel_btn">아니오. 삭제하지 않습니다.</button>
				</div>
			</form>
		</section>
		<hr />
	</div>
</body>
</html>