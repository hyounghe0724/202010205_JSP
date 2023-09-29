<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<%@ page contentType="text/html; charset=utf-8"%>
<style>
    div.col-md-4 img{
        border: 0.5px solid black;
        width:350px;
        height: 350px;
    }    
    div .card bg-dark{
        background-color: white;
    }
</style>
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
	<!-- <nav class="navbar navbar-expand  navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./index.jsp">Home</a>
			</div>
		</div>
	</nav>
    <%-- String greeting = "Welcome to Web Shopping Mall";
      String tagline = "Welcome to Web Market!";--%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%--greeting--%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%--tagline--%>
			</h3>
		</div>
		<hr>
	</div>	
    <%-- page import="java.util.Date"--%>

    <%--
	Date day = new java.util.Date();
	String am_pm;
	int hour = day.getHours();
	int minute = day.getMinutes();
	int second = day.getSeconds();
	if (hour / 12 == 0) {
		am_pm = "AM";
	} else {
		am_pm = "PM";
		hour = hour - 12;
	}
	String CT = hour + ":" + minute + ":" + second + " " + am_pm;
	out.println("현재 접속  시각: " + CT + "\n");
--%>

	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer> -->
    <%@ include file="top_banner.jsp" %>
    <%@ include file="top_menu.jsp" %>
	<%@ include file="body_main.jsp" %>	
    <%@ include file="footer.jsp" %>

    
</body>
<script>
	window.open("popup/popup1.jsp", "popup", "width=365, height = 250, left = 0, top=0")
</script>

</html>

