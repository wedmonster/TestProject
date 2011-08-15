<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.zxing.qrcode.color.encoder.ColorEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String text = (String) request.getParameter("text");
	if(text == null) text = "";
	
	String i = (String) request.getParameter("index");
	if(i == null) i = "0";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= ColorEncoder.splitContent(text)[Integer.valueOf(i)] %>
</body>
</html>