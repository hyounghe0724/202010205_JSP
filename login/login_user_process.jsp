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
ResultSet user = pstmt.executeQuery();

// 조회된 사용자 정보를 세션에 저장 2번
if (user.next()) {
    String id = user.getString("id");
    String name = user.getString("name");
    String gender = user.getString("gender");
    String birth = user.getString("birth");
    String email = user.getString("mail");
    String phone = user.getString("phone");
    String address = user.getString("address");
    String registDay = user.getString("regist_day");
    
    // 세션에 사용자 정보 저장
    session.setAttribute("id", id);
    session.setAttribute("name", name);
    session.setAttribute("gender", gender);
    session.setAttribute("birth", birth);
    session.setAttribute("email", email);
    session.setAttribute("phone", phone);
    session.setAttribute("address", address);
    session.setAttribute("registDay", registDay);
    session.setAttribute("isLogined", true);
    // 필요한 다른 사용자 정보도 필요에 따라 세션에 저장할 수 있습니다.
    // UserSession 객체에 사용자 로그인 정보를 저장합니다.
  if (session.getAttribute("userSession") == null) {
   
    userSession.setId(userId);
 
    // 필요한 다른 사용자 정보도 필요에 따라 저장합니다.
    
    session.setAttribute("userSession", userSession);
  }
    Cookie sessionIdCookie = new Cookie("sessionId", session.getId());
    sessionIdCookie.setMaxAge(24 * 60 * 60); // 쿠키 유효 기간 설정 (예: 1일)
    response.addCookie(sessionIdCookie);

    response.sendRedirect("../index.jsp"); // 로그인 후 이동할 페이지
  } else {
    // 로그인 실패 처리 로직을 구현할 수 있습니다.
    response.sendRedirect("login.jsp?error=1"); // 로그인 페이지로 이동 (에러 메시지 포함)
  }
%>