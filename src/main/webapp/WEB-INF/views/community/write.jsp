<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<body>
<head>

</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>

<h2> 게시글 작성 </h2>
 
<form method="post">
	<div class="container">
      <div class="form-group">
        <label for="subject">제목</label>
        <input type="text" class="form-control" id="subject" name="title" placeholder="제목을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="writer">작성자</label>
        <input type="text" class="form-control" id="writer" name="writer" value="${user.id}" readonly="readonly">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요." rows="3"></textarea>
      </div>
    
        <button type="submit" class="pull-right">작성하기</button>
        <button type="button" onclick="location.href='/community/listPageSearch?num=1' ">취소하기</button>
	</div>
</form>
</body>
</html>