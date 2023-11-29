<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>

   <%@ include file="../db/db_conn.jsp"%>
   <%
	String productId = request.getParameter("id");

	String sql = "delete from product where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId); // 파라미터 설정
	pstmt.executeUpdate(); // 쿼리 실행
    pstmt.close();
    conn.close();
    

    response.sendRedirect("product_edit.jsp?edit=update");
 %>
