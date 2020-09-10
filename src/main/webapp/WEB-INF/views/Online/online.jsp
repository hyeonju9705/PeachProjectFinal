<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<!-- 	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>index</title>
	-------------------------------jQuery---------------------------
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	---------------------------------fotorama---------------------------
	<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
	<link rel="stylesheet" href="css/a.css"> -->

    <style> 
 
button{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#1AAB8A;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}


    </style>
</head>
<body>
    
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
	
    <c:if test="${user.type eq 'b'}">
    	<button type="button" onclick="location.href='/Online/store_add' ">내 상점등록</button>
	</c:if>
    <!--버튼끝-->
    <div class="tab-content">
  <div class="tab-pane fade show active" id="qwe">
    <p></p>
      <div class="album py-5 bg-light">
          <div class="container">

          <c:forEach items="${list}" var="list">
          	<div class="col-md-4">
          	<h2>${list.name}</h2>
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_173bd64592d%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_173bd64592d%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9296875%22%20y%3D%22117.45%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                <div class="card-body">
                  <p class="card-text"></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    </div>
                  </div>
                </div>
              </div>
            </div> 
          </c:forEach>
          
        </div>
  </div>
  </div>
</div>
<div>
			<c:if test="${page.prev}">
 				<span>[ <a href="/Online/online?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
			</c:if>

			<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 				<span>
 
  					<c:if test="${select != num}">
   						<a href="/Online/online?num=${num}${page.searchTypeKeyword}">${num}</a>
  					</c:if>    
  
  					<c:if test="${select == num}">
   						<b>${num}</b>
  					</c:if>
    
 				</span>
			</c:forEach>
			<c:if test="${page.next}">
 				<span>[ <a href="/Online/online?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
			</c:if>
		</div>
<div>
 		<select name="searchType">
     		<option value="name" <c:if test="${page.searchType eq 'name'}">selected</c:if>>가게명</option>
 		</select>
 
 			<input type="text" name="keyword" value="${page.keyword}"/>
 
 			<button type="button" id="searchBtn">검색</button>
		</div>
		<script>
 			document.getElementById("searchBtn").onclick = function () {
  				let searchType = document.getElementsByName("searchType")[0].value;
 				let keyword =  document.getElementsByName("keyword")[0].value;
 				location.href = "/Online/online?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
 			};
		</script>
    
</body>
</html>