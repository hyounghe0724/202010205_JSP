<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "쌈성.COM에 오신 것을 환경합니다";
      String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
<!--톰브라운 에디션 배너 -->
<div class="card bg	" > 
    <img src="https://images.samsung.com/kdp/editor/goods_desc/202309/680d8d4b-547f-4cdb-b0c3-d677b0b90a29.png"
         class="card-img" alt="..."> 
    <div class="card-img-overlay">
        <h5 class="card-title text-light" style="font-size: 50px; font-weight: bold; text-a position:absolute; ">Galaxy Z Fold5 톱브라운 에디션</h5>
    </div>
<!-- 톰브라인 에디션 배너-->
    <%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
<div class="container">
    <div class="row" align="center">
        <% for (int i = 0; i<listOfProducts.size(); i++){
            Product product = listOfProducts.get(i);
        %>
        <div class="col-md-4">
            <!-- <div class="card bg-dark text-white">
                        <img src="image/product/<%-- product.getProductId() --%>.jpg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div> -->
            
            <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
            <h3><%= product.getPname()%></h3>
            <p><%= product.getDescription()%></p>
            <p><%=product.getUnitPrice() %>원</p>
            <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

        </div>
        <%
				}
		%>

    </div>
    <hr>
</div>
    
    
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	