<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="../db/db_conn.jsp" %>
<%@ page import="java.util.*" %>

<%
      request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    // 현재 날짜와 시간을 등록일로 설정
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Seoul")); // 한국 시간대로 설정
    Calendar calendar = Calendar.getInstance();
    String registDay = dateFormat.format(calendar.getTime());

    // 회원 정보를 DB에 저장
    String sql = "INSERT INTO member  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
     pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    pstmt.setString(3, name);
    pstmt.setString(4, gender);
    pstmt.setString(5, birth);
    pstmt.setString(6, email);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);
    pstmt.setString(9, registDay);
    pstmt.executeUpdate();

    // DB 연결 및 자원 해제
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    // 회원 객체 생성 및 저장
   
    response.sendRedirect("../index.jsp");
%>