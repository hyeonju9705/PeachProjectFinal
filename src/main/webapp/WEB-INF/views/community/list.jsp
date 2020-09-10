<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>index</title>
	<!-- -------------------------------jQuery--------------------------- -->
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<!-- ---------------------------------fotorama--------------------------- -->
	<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
	<link rel="stylesheet" href="css/a.css">
	
	<style>
	 #container {
      /*  width: 70%;*/
      margin: 0 auto;     /* 가로로 중앙에 배치 */

    }
 
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #ff976e;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
	</style>
</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
    <div id="list">
      <h2><b>자유게시판 (전체 글 : ${totalCount})</b> </h2>
    </div>
      <button type="button" onclick="location.href='/community/write' ">글쓰기</button>
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">작성일</th>
            <th width="20%">작성자</th>
            <th width="10%">조회</th>
          </tr>
          
		<c:forEach items="${list}" var="list">
 		<tr>
  			<td>${list.bno}</td>
  			<td>
    			<a href="/community/view?bno=${list.bno}">${list.title}</a>
			</td>
  			<td>${list.regDate}</td>
  			<td>${list.writer}</td>
  			<td>${list.viewCnt}</td>
 		</tr>
		</c:forEach>
        </thead>
      </table>
      </div>
</body>
 
</html>