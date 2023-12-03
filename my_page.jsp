<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<jsp:useBean id="userSession" class="dto.UserSession" scope="session" />
<%
  // UserSession 객체에서 사용자 로그인 정보를 가져옵니다.
  UserSession userSession = userSession.getId("hyounghe0724");
  if (userSession != null) {
    String id = userSession.getId();
    String name = userSession.getName();
    // 필요한 다른 사용자 정보도 필요에 따라 가져올 수 있습니다.

    // 여기에서 사용자 정보를 활용하여 페이지를 구성하는 코드를 작성합니다.
  } else {
    // 세션 정보가 없는 경우 로그인 페이지로 이동하거나 다른 처리를 수행할 수 있습니다.
    response.sendRedirect("login.jsp");
  }
%>