
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="com.google.zxing.qrcode.color.ColorQRCodeWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>

<%
	ColorQRCodeWriter cq = new ColorQRCodeWriter();
	String text = "test1234jasdfkertesr3sertsdr032304";
	
	BitMatrix[] bitMatrix = cq.encode(text, BarcodeFormat.QR_CODE, 100, 100);
	out.clear();
	ServletOutputStream outputStream = response.getOutputStream();
	for(int i = 0; i<bitMatrix.length(); i++){
		MatrixToImageWriter.writeToStream(bitMatrix[i], "png", outputStream);
		outputStream.flush();
	}
	outputStream.close();

%>

<h1>
	Hello world!
</h1>
</body>
</html>
