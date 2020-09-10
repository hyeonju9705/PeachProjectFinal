<%@ page contentType = "text/html;charset=utf-8" %>

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
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }


	</style>
</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>

 <!-- 여기서 부터 수정  -->
  <div id="container">
    <div align="right">
      <!-- Login 검증 -->
      <!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
      <c:if test="${id != null}">
        <%-- <%@include file="loginOk.jsp" %> --%>
      </c:if>
      <c:if test="${id == null}">
        <%-- <%@include file="login.jsp" %> --%>
      </c:if>
    </div>
   
    <div id="list">
     <h2> <b>내 상점 목록</b> </h2>
    </div>
     
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">상점 제목</th>
            <th width="10%">작성자</th>
            <th width="20%">등록일</th>
            <th width="10%">조회</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="article" items="${articles}" varStatus="status">
            <tr>
              <td>${article.articleNumber}</td>
              <td id="title">
                <c:if test="${article.depth > 0}">
                  &nbsp;&nbsp;
                </c:if>
                <a href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
                <c:if test="${article.hit >= 20}">
                  
                </c:if>
              </td>
              <td>${article.id}</td>
              <td>${article.writeDate}</td>
              <td>${article.hit}</td>
            <tr>
          </c:forEach>
        </tbody>
      </table>
       
      <!-- Paging 처리 -->
      <div id="paging">
        ${pageCode}
      </div>
    </div>
  </div>

  
  
  
  
  
  

  
  
  
  <!-- 기존 게시판 코딩  -->
    <!--  <table class="table">
    <thead>
        <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>날짜</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>첫 글</td>
            <td>아이유</td>
            <td>08/05</td>
            </tr>
        </tbody>
    </table>
     -->
</body>
    
</html>