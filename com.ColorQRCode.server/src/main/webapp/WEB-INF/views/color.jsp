<%@ page contentType="image/png;charset=utf-8" %>
<%@ page import="com.google.zxing.qrcode.color.ColorQRCodeWriter" %>
<%@ page import="com.google.zxing.qrcode.QRCodeWriter" %>
<%@ page import="com.google.zxing.common.BitMatrix" %>
<%@ page import="com.google.zxing.BarcodeFormat" %>
<%@ page import="com.google.zxing.client.j2se.MatrixToImageWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>

<%
	String i = (String)request.getParameter("index");
	if(i == null) i = "0";
	
	String text = (String) request.getParameter("text");
	if(text == null) text = "";
	
	int width = 100;

	String strWidth = request.getParameter("width");

	if( strWidth != null ) {
		width = Integer.parseInt(strWidth);
	}

	int height = 100;

	String strHeight = request.getParameter("height");

	if( strHeight != null ) {
		height = Integer.parseInt(strHeight);
	}
	
	
	
	ColorQRCodeWriter cq = new ColorQRCodeWriter();
	//String text = "test1234jasdfkertesr3sertsdr032304";
	
	BitMatrix[] bitMatrix = cq.encode(text, BarcodeFormat.QR_CODE, width, height);
	out.clear();
	out = pageContext.pushBody();
	ServletOutputStream outputStream = response.getOutputStream();
	//MatrixToImageWriter.writeToStream(bitMatrix[Integer.valueOf(i)], "png", outputStream);
	MatrixToImageWriter.writeToStream(bitMatrix, "png", outputStream);
	outputStream.flush();	
	outputStream.close();
%>

<h1>
	Hello world!
</h1>
</body>
</html>
