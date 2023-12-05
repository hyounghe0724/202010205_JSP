<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import ="dto.UserSession" %>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page errorPage = "exception/product_not_found.jsp" %>
<%@ page import="example.*" %>
<%@ page import="dao.ProductRepository"%>
<%@ include file="db/db_conn.jsp"%>
<%
  // UserSession 객체에서 사용자 로그인 정보를 가져옵니다.
     String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("../index.jsp");
        return;
    }
    

        String sql = "select * from member where id = ?"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
        pstmt.setString(1, id);
		rs = pstmt.executeQuery(); // 쿼리 실행

    if(rs.next()){
	%>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<title>마이페이지</title>
</head>
<body>
    <%@ include file="top_banner.jsp" %>
    <%@ include file="top_menu.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=rs.getString("name")%> 님의 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				 <h3>이름 : <%=rs.getString("name")%></h3>
				<p>성별 : <%=rs.getString("gender")%>
				<p><b>생일 </b> : <%=rs.getString("birth")%>
				<p><b>이메일 </b> : <%=rs.getString("mail")%>
				<p><b>번호 </b> : <%=rs.getString("phone")%>
				<h4> 계정 생성 년도 <br><%=rs.getString("regist_day")%></h4>
                
                <p>
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