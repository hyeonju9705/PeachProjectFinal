<%@ page contentType = "text/html;charset=utf-8" %>

<html>
<head>

   <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
   <script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
   <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
   <!-- ---------------------------------fotorama--------------------------- -->
   <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
   <link rel="stylesheet" href="css/a.css">
  
   <style>
  
   #peach {

    margin: 0% 9%;
}
    .card-title {
		font-family:'맑은 고딕';
	}
	.card-text {
		font-family:'맑은 고딕';
	}


   </style>
   
</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
 
    <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="/intro/intro">복숭아 품질</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="/intro/vitamin">영양성분</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="/intro/howToPick">고르는 법</a>
  </li>
</ul>
<div class="tab-content">
  <div class="tab-pane fade show active" id="qwe">
      
      <br>
      
      <div id="peach">
      <img src="http://www.peachfestival.co.kr/img/sub04_2.png">
          </div>
      
      
  </div>
    
    
    
  <div class="tab-pane fade " id="asd">
      <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
        <img src="https://data2.1freewallpapers.com/detail/peaches-apricots-bones.jpg" class="w-100" display="flex">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h4 class="card-title">복숭아의 영양성분 분석</h4>
              <p class="card-text">복숭아는 비타민A와 C가 무척 많이 들어 있고 펙틴질이 풍부한 알칼리성 식품입니다.<br>
                  단맛이 강하나 당분은 10% 정도입니다. <br>복숭아의 시큼한 맛은 유기산으로 구연산이 0.5% 정도 들어있습니다. 
                  <br>복숭아는 알칼리성 식품으로 다량의 단백질과 아미노산을 함유하고 있어 건강식품으로 좋습니다.
                  <br>또한 식이섬유를 다량 함유하고 있어 배변을 촉진하여 변비치료에 효과가 있으며 대장암 예방에도 효과가 있습니다.</p>
              
            </div>
          </div>
      </div>
    </div>
  </div>
    
    
    <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="https://data2.1freewallpapers.com/detail/peaches-leaves-moist.jpg" class="w-100">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h4 class="card-title">복숭아의 주요 기능성 성분과 작용</h4>
              <p class="card-text">• 폴리페놀류 : 항산화 작용, 악취 제거 작용, 혈중 콜레스테를 저하, 혈압 강화, 발암 방지, 향균 작용 <br>
                  · 아마그달린 : 한방 약제의 유효성분으로 기침 방지, 신경 안정 작용<br>
                  • 캠페롤 : 이뇨 작용 · 베타카로틴 : 발암 방지, 신장병 예방 <Br>
                  ·소르비톨 : 변비 예방, 장내 유해균 억제, 비타민, 미네랄 흡수 촉진<Br>
                  • 비타민C : 창상치유, 항종양성 작용, 해독작용, 발암성분 억제 작용, 혈중 콜레스테롤 저하 작용, 항피로성 작용, 철 흡수 이용률 향상 작용, 항히스타민 작용, 면역기능 증강 작용 등.</p>
              
            </div>
          </div>
        </div>
      </div>
    </div>
        <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F9943AA475D197F9706" class="w-100">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h4 class="card-title">복숭아의 일반적 효능</h4>
              <p class="card-text">
                수분을 공급해 줌으로 피부미용에 효능이 있습니다. 밤에 식은땀을 흘릴 때 효과가 있습니다. 간 기능을 활발하게 하며 대장암 예방에 효과도 있습니다. 담배의 니코틴을 제거하는 효능도 있습니다. 피를 맑게 하고 위장기능 개선 효과가 있습니다.
                </p>
             
            </div>
          </div>
        </div>
      </div>
        </div>
        <div class="container py-3">
        <div class="card">
          <div class="row ">
            <div class="col-md-4">
              <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTA1MThfMjkw/MDAxNTU4MTU1NTQ5MjIy.8x2kfaWyocTgpHJIo3LvivgElPsR8eimfIm0ceGAhU0g.DF0a-Novoff6BtNgDO0Nql2VCBjhjcIWnNSMPMV6E4Yg.JPEG.lsm2076/%EB%B3%B5%EC%88%AD%EC%95%84.JPG?type=w800" class="w-100">
            </div>
            <div class="col-md-8 px-3">
              <div class="card-block px-3">
                <h4 class="card-title">복숭아의 각 부위별 한방 효능</h4>
                <p class="card-text">• 열매 : 한약명 도자, 진액생성 장을 윤활하게 하여 대변을 잘 보게 함, 어혈 덩어리를 풀어줌 <br>
                    · 씨 : 한약명 도인, 어혈치료, 타박상 치료, 변비 치료 <br>
                    • 잎 : 한약명 도엽, 신경성 두통, 습진, 종창, 선창 <br>
                    • 꽃 : 한약명 도화, 이수 통변, 수종, 각기 <Br>
                    • 가지 : 한약명 도지, 심복부의 통증 제거, 역병치료 • 뿌리 : 한약명 도근, 코피, 토혈을 치료</p>
                
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  <div class="tab-pane fade" id="zxc">
      
      <div class="container py-3">
        <div class="card">
          <div class="row ">
            <div class="col-md-4">
              <img src="https://data2.1freewallpapers.com/detail/peach-slice-bone.jpg" class="w-100">
            </div>
            <div class="col-md-8 px-3">
              <div class="card-block px-3">
                <h4 class="card-title">좋은품종의 복숭아 고르기</h4>
                <p class="card-text">과실이 크고 크기와 모양이 균일한것<br>
                    품종 고유의 색택이 고르게 착색되고 신선도를 유지한 것<Br>
                    육질은 단단하면서 연하고 당도가 높고 과즙이 많은 것<br>
                    핵주위에 섬유질이 적은 것 (핵이란 씨를 말합니다)<br>
                    품종 고유의 특성을 갖고 선별이 잘 된 것<Br>
                    껍질이 잘 벗겨지는 것보다 잘 벗겨지지 않는게 당도가 높습니다<Br>
                    복숭아는 너무 차게 해 두면 금방 상합니다<Br>
                    냉장고에 보관할 때는 신문지 같은 종이로 싸서 보관하세요</p>
               
              </div>
            </div>

          </div>
        </div>
      </div>
  </div>
</div>
</body>   
</html>