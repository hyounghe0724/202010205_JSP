<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>
<%
    String userId = request.getParameter("id");

    String sql = "delete  from member where id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, userId);
    pstmt.executeUpdate();
	if (rs != null)
		rs.close();
    if (pstmt != null)
        pstmt.close();
	if (conn != null)
		conn.close();

        response.sendRedirect("member_view.jsp");
 %>
