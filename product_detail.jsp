<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page errorPage = "exception/product_not_found.jsp" %>
<%@ page import="example.*" %>
<%@ page import="dao.ProductRepository"%>
<%@ include file="db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>

<title>상품 상세 정보</title>
</head>
<body>
    <%@ include file="top_banner.jsp" %>
    <%@ include file="top_menu.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); 
    
		String sql = "select * from product where p_id = ?"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
        pstmt.setString(1, id);
		rs = pstmt.executeQuery(); // 쿼리 실행
    if(rs.next()){
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				 <h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("p_id")%></span>
				<p><b>제조사</b> : <%=rs.getString("p_manufacturer")%>
				<p><b>분류</b> : <%=rs.getString("p_category")%>
				<p><b>재고 수</b> : <%=rs.getString("p_unitsInstock")%>
				<h4><%=rs.getString("p_unitPrice")%>원</h4>
                
                <p>
                <form name="addForm" action="./cart/product_cart_add.jsp?id=<%=rs.getString("p_id")%>" method="post">
			        <button class="btn btn-info" onclick="addToCart()"> 장바구니 추가 &raquo;</button> 
                    <a href="./cart/product_cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
	            </form>

        <div class="card bg-dark text-white">
                    <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
	<p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a href="index.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
		</div>
		</div>
		<hr>
            <%
        }
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>

	</div>
    <%@ include file="footer.jsp" %>
</body>
</html>
