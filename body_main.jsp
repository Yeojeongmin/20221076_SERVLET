 <%@ page contentType="text/html; charset=utf-8"%>
    <%! String greeting = "놀러와요 동물의 숲";
      String tagline = "아기자기한 친구들과 같이 플레이해보시겠어요?";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	
<div class ="card bg-dark text-white">
    <img src="image/sale.png" class="card-image" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">
            할인 이벤트
        </h5>
        <p class="card-text">
            Nintendo
        </p>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">닌텐도 동물의숲 에디션</a>
    <a href="#" class="list-group-item list-group-item-action">닌텐도 스위치</a>
    <a href="#" class="list-group-item list-group-item-action">닌텐도 스위치 라이트</a>
</div>