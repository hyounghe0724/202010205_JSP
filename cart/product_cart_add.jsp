<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ include file="../db/db_conn.jsp"%>
<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("../index.jsp");
        return;
    }
    

        String sql = "select * from product where p_id = ?"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
        pstmt.setString(1, id);
		rs = pstmt.executeQuery(); // 쿼리 실행
    if(rs.next()){
    if (rs == null) {
        response.sendRedirect("../exception/product_not_found.jsp");
        return; // sendRedirect() 호출 후 return 문을 추가하여 메서드를 종료
    }

    
        
    Product goods = new Product();
    goods.setProductId(rs.getString("p_id"));
    goods.setPname(rs.getString("p_name"));
    goods.setUnitPrice(rs.getInt("p_unitPrice"));
    goods.setDescription(rs.getString("p_description"));
    goods.setCategory(rs.getString("p_category"));
    goods.setManufacturer(rs.getString("p_manufacturer"));
    goods.setUnitInStock(rs.getLong("p_unitsInStock"));
    goods.setCondition(rs.getString("p_condition"));
    goods.setRootImage(rs.getString("p_fileName"));

    ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
  
    if (cartList == null) {
        cartList = new ArrayList<Product>();
            cartList.add(goods);
          goods.setQuantity(1);
        session.setAttribute("cartlist", cartList); // 세션에 "cartlist"라는 키로 ArrayList 객체를 저장합니다.

    }

   

    }

    response.sendRedirect("product_cart.jsp?id=" + id); // 장바구니 화면 페이지로 이동
%>