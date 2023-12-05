<%@ page contentType="text/html;chauseret=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.UserSession"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>
<jsp:useBean id="userSession" class="dto.UserSession" scope="session" />
<%
String userId = request.getParameter("id");
String password = request.getParameter("password");
String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, userId);
pstmt.setString(2, password);
ResultSet userRs = pstmt.executeQuery();

UserSession user = new UserSession();

if (userRs.next()) {
    String id = userRs.getString("id");
    String name = userRs.getString("name");
    String gender = userRs.getString("gender");
    String birth = userRs.getString("birth");
    String email = userRs.getString("mail");
    String phone = userRs.getString("phone");
    String address = userRs.getString("address");
    String registDay = userRs.getString("regist_day");
    
    // 세션에 사용자 정보 저장
    user.setId(id);
    user.setName(name);
    user.setGender(gender);
    user.setBirth(birth);
    user.setEmail(email);
    user.setPhone(phone);
    user.setAddress(address);
    user.setRegistDay(registDay);
    
   
    session.setAttribute("userSession", user);
    

    response.sendRedirect("../index.jsp"); 
  } else {
    response.sendRedirect("login.jsp?error=1"); 
  }
%>