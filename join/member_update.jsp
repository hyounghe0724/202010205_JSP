<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>유저 정보 수정/삭제</title>
    <script type="text/javascript">
	function deleteConfirm() {
		if (confirm("해당 상품을 삭제합니다!!") == true)
		   let deleteForm = document.querySelector("#userDeleteForm");
            deleteForm.submit();
		else
		   return;
	}
</script>
</head>
<body>
   <jsp:include page="../top_menu.jsp" />
   <div class="jumbotron">
	<div class="container">
		<h1 class="display-3">유저 정보 수정</h1>
	</div>
   </div>
   <%@ include file="../db/db_conn.jsp"%>
   <%
    String userId = request.getParameter("id");

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userId);
	rs = pstmt.executeQuery();
	if (rs.next()){
   %>

 <div class="container">
   <div class="row">
      <div class="col-md-8">
         <form name="userUpdate" action="member_update_process.jsp" class="form-horizontal" method="post" >
            <div class="form-group row">
               <label class="col-sm-2">유저 정보</label>
            </div>
             <div class="form-group row">
               <label class="col-sm-2">아이디</label>
               <div class="col-sm-3">
                  <input type="text" id="id" name="id" class="form-control" value="<%=rs.getString("id")%>" readonly>
               </div>
             </div>
            <div class="form-group row">
               <label class="col-sm-2">이름</label>
               <div class="col-sm-3">
                  <input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("name")%>">
               </div>
            </div>
            <div class="form-group row">
               <label class="col-sm-2">성</label>
               <div class="col-sm-3">
                  <input type="text" id="gender" name="gender" class="form-control" value="<%=rs.getString("gender")%>">
               </div>
            </div>
            <div class="form-group row">
               <label class="col-sm-2">생일</label>
               <div class="col-sm-5">
                  <input type="text" id="birth" name="birth" class="form-control" value="<%=rs.getString("birth")%>">
               </div>
            </div>
            <div class="form-group row">
               <label class="col-sm-2">메일</label>
               <div class="col-sm-3">
                  <input type="text" name="email" class="form-control" value="<%=rs.getString("mail")%>">
               </div>
            </div>
             <div class="form-group row">
               <label class="col-sm-2">전화번호</label>
               <div class="col-sm-3">
                  <input type="text" name="phone" class="form-control" value="<%=rs.getString("phone")%>">
               </div>
            </div>
            <div class="form-group row">
               <label class="col-sm-2">주소</label>
               <div class="col-sm-3">
                  <input type="text" name="address" class="form-control" value="<%=rs.getString("address")%>">
               </div>
            </div>
            <div class="form-group row">
               <div class="col-sm-offset-2 col-sm-10">
                  <input type="submit" class="btn btn-primary" value="수정">
               </div>
            </div>
         </form>
      </div>
   </div>
     <div class="col-sm-offset-2 col-sm-10">
            
       </div>
     <form id="userDeleteForm" action="member_delete_process.jsp" action="post">
            <input type="text" name="id" value="<%=rs.getString("id")%>" readonly style="display: none;">
         <div class="form-group row">
               <div class="col-sm-offset-2 col-sm-10">
                  <button onclick="deleteConfirm()" class="btn btn-danger" role="button">
                        삭제
                 </button>
               </div>
            </div>
        </form>
</div>
    
<%
	}
	if (rs != null)
		rs.close();
    if (pstmt != null)
        pstmt.close();
	if (conn != null)
		conn.close();
 %>
 <hr>
 <jsp:include page="../footer.jsp" />
</body>
</html>
