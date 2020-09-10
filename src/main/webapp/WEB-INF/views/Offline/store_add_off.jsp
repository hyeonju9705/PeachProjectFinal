<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
    <head>
	<!-- <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>index</title>
	-------------------------------jQuery---------------------------
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	---------------------------------fotorama---------------------------
	<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
	<link rel="stylesheet" href="css/a.css">
  
 -->
        
</head>
<body>

<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
    
<!--   상점입력폼  -->
    <div class="container">
<table class="table table-bordered">
    
    <tbody>
        <form method="post">
             <h2 class="text-center">상점등록_온라인</h2><p></p>
            <tr>
                <th> 작성자 </th>
                <td><input type="text" name="writer" value="${user.id}" readonly="readonly" class="form-control"/></td>
            </tr><tr>
                <th>상점이름  </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="name" class="form-control"/></td>
            </tr>
            <tr>
                <th>주소</th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="addr" class="form-control"></textarea></td>
            </tr>
             <tr>
                <th>핸드폰번호</th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="phone" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" id="gdsImg" name="file" /></td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록하기" class="pull-right"/>
                 	<button type="button" onclick="location.href='/Online/online' ">취소하기</button>
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>


    </body>
</html>