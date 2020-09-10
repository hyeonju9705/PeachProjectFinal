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

<h2>게시글수정</h2> 
<br>
<form method="post">
	<div class="container">
      <div class="form-group">
        <label for="subject">제목</label>
        <input type="text" class="form-control" id="subject" name="title" value="${view.title}"/>
      </div>
      <div class="form-group">
        <label for="writer">작성자</label>
        <input type="text" class="form-control" id="writer" name="writer" value="${view.writer}"/>
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="3">${view.content}</textarea>
      </div>
      
       <input type="submit" class="pull-right" value="수정하기"/>
       <button type="button" onclick="location.href='/community/listPageSearch?num=1' ">취소하기</button>
	</div>
</form>

</body>
</html>