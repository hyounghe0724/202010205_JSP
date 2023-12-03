<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8"); // 표준 인코딩 설정 : 한글 깨짐 방지

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8")); // 표준 코드 형태로 변환
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
    Cookie secondeAddressName = new Cookie("Shipping_secondeAddressName", URLEncoder.encode(request.getParameter("secondeAddressName"), "utf-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode",	URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
	Cookie reference = new Cookie("Shipping_reference", URLEncoder.encode(request.getParameter("reference"), "utf-8"));
    Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));

	cartId.setMaxAge(24 * 60 * 60); // 초 단위
	name.setMaxAge(24 * 60 * 60);
	zipCode.setMaxAge( 24 * 60 * 60);
    secondeAddressName.setMaxAge(24 * 60 * 60);
    reference.setMaxAge(24 * 60 * 60);
	addressName.setMaxAge(24 * 60 * 60);

	response.addCookie(cartId); // 생성된 쿠키 추가
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(secondeAddressName);	
    response.addCookie(reference);
	response.addCookie(zipCode);
	response.addCookie(addressName);

	response.sendRedirect("order_confirm.jsp");
%>