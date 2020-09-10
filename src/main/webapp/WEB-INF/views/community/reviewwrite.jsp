<%@ page contentType = "text/html;charset=utf-8" %>
<%	
%>
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
             <h2 class="text-center">리뷰 작성</h2><p></p>
            <tr>
                <th>제목  </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
            <tr>
                <th>작성자 </th>
                <td><input type="text" placeholder="작성자를 입력하세요. " name="subject" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용 </th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" id="gdsImg" name="file" /></td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <input type="button" value="등록하기" onclick="sendData()" class="pull-right"/>
                    <!--  <input type="button" value="취소하기" class="pull-left"/> -->
                    <button type="button" onclick="location.href='/peachProject/review.syu' ">취소하기</button>
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록하기 </a>
                    <a class="btn btn-default" type="reset"> 취소하기 </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>


    </body>
</html>