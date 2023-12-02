<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="dto.Product"%>
<%@ page errorPage = "exception/main_server_downtime.jsp" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%! String greeting = "유저 리스트 페이지 입니다.";
      String tagline = "하단 페이지 : 확인";%>
<%
	String edit = request.getParameter("edit");
%>
<script type="text/javascript">
	function deleteConfirm() {
		if (confirm("해당 상품을 삭제합니다!!") == true)
		   
		else
		   return;
	}
</script>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	

	<div class="container">
    <div class="row" align="center">
        
        <div class="col-md-4">
                
          
<div class="container">
   <form action="<c:url value='./BoardListAction.do'/>" method="post">
   <div>
      <div class="text-right">
      </div>
   </div>
   <div style="padding-top: 50px">
      <table class="table table-success  align-middle">
             <%
		String sql = "select * from member"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>
         <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Gender</th>
              <th scope="col">Birth</th>
              <th scope="col">email</th>
              <th scope="col">phone</th>
              <th scope="col">address</th>
            </tr>
          </thead>
            <tbody>
                 <tr class="table-success">
                <td scope="row table-success" ><%= rs.getString("name")%></td>
                <td ><%= rs.getString("gender")%></td>
                <td ><%= rs.getString("birth")%></td>
                <td ><%= rs.getString("mail")%></td>
                <td ><%= rs.getString("phone")%></td>
                <td ><%= rs.getString("address")%></td>
                <td>
                    <button btn btn-success>
                        <a href="member_update.jsp?edit=update&id=<%= rs.getString("id") %>">수정/삭제</a>
                    </button></td>
                 
             </tr> 
             </tbody>       
         </table>   

        </div>
        <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>


		<hr>

 
    
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
    

		<hr>
	</div>	