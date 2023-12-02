<%@ page contentType="text/html;chauseret=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>
// 세션 객체 생성
<%

// 사용자 id를 파라미터로 받아와서 변수에 저장
String userId = request.getParameter("id");
String password = request.getParameter("password");
// 데이터베이스에서 사용자 정보를 조회하는 코드
String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, userId);
pstmt.setString(2, password);
ResultSet user = pstmt.executeQuery();

// 조회된 사용자 정보를 세션에 저장
if (user.next()) {
    String id = user.getString("id");
    String name = user.getString("name");
    String email = user.getString("mail");
    
    // 세션에 사용자 정보 저장
    session.setAttribute("userId", id);
    session.setAttribute("userName", name);
    session.setAttribute("userEmail", email);
    session.setAttribute("isLogined", true);
    // 필요한 다른 사용자 정보도 필요에 따라 세션에 저장할 수 있습니다.
}
response.sendRedirect("../index.jsp");
%>