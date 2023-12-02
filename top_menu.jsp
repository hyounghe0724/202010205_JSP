<%@ page contentType="text/html;charset=utf-8"%>

<nav class="navbar navbar-expand  navbar-white bg-white">
    <div style="margin-right: 20px; ">
        <img src="https://www.samsung.com/sec/static/_images/gnb/logo-gnb.svg" class="img-fluid" alt="main_image">
    </div>
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
        <% HttpSession userSession = request.getSession(); %>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">Galaxy SmartPhone</a>    
        <a class="dropdown-item" href="#">Galaxy FilpZ</a>
        <a class="dropdown-item" href="#">Galaxy Book</a>
     </div>
	</div>
   <div >
    <button  class="btn " style="background-color: white; ">
        <a class="navbar-brand" href="../index.jsp">상품목록(기본 홈)</a>
    </button>
       <% if (session.getAttribute("isLogined") != null) { %>
            <button class="btn"  style="background-color: white; display: none;" >
                <a class="navbar-brand" href="../login/login_user.jsp" >로그인 </a>
           </button>
            <button class="btn"  style="background-color: white; " >
                <a class="navbar-brand" href="#" >로그아웃</a>
           </button>
        <% } else { %>
             <button class="btn"  style="background-color: white; " >
                <a class="navbar-brand" href="../login/login_user.jsp" >로그인 </a>
           </button>
             <button class="btn"  style="background-color: white; display: none;" >
                <a class="navbar-brand" href="#" >로그아웃 </a>
           </button>
        <% } %>    
    <button class="btn " style="background-color: white; ">
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
       </button>
        <button class="btn " style="background-color: white; ">
            <a class="navbar-brand" href="../join/member_join.jsp">회원가입</a>
       </button>
    <button>
         <a class="btn " href="../admin/index_ad.jsp">
            관리자 모드
    </a>
       </button>
       
       
    
    </div>
	</nav>
