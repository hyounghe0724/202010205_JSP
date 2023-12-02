<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
     request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");




    String sql = "select * from member where id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs = pstmt.executeQuery();

    try {
        if (rs.next()) {
            sql = "UPDATE member SET name=?, gender=?, birth=?, mail=?, phone=?, address=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, gender);
            pstmt.setString(3, birth);
            pstmt.setString(4, email);
            pstmt.setString(5, phone);
            pstmt.setString(6, address);
            pstmt.executeUpdate();
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
    }

    response.sendRedirect("member_view.jsp");
%>