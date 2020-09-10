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
  

        
</head>
<body>

<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
    
<!--   상점입력폼  -->
    <div class="container">
<table class="table table-bordered">
    
    <tbody>
        <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
             <h2 class="text-center">사업자 등록</h2><p></p>
            <tr>
                <th>제품번호 </th>
                <td><input type="text" placeholder="제품번호를 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
            <tr>
                <th>제품수량 </th>
                <td><input type="text" placeholder="제품수량을 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
             <tr>
                <th>제품가격  </th>
                <td><input type="text" placeholder="제품가격을 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
             <tr>
                <th>사업자 ID  </th>
                <td><input type="text" placeholder="사업자ID를 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
             <tr>
                <th>사업지번호  </th>
                <td><input type="text" placeholder="사업자번호를  입력하세요. " name="subject" class="form-control"/></td>
            </tr>
             <tr>
                <th>제조사명  </th>
                <td><input type="text" placeholder="제조사명을 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
            
           
            <tr>
                <td colspan="2">
                    <input type="button" value="등록하기" onclick="sendData()" class="pull-right"/>
                     <!--  <input type="button" value="취소하기" class="pull-left"/> -->
                 <button type="button" onclick="location.href='/peachProject' ">취소하기</button>
                   
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>


    </body>
</html>