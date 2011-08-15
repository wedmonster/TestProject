<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="com.google.zxing.qrcode.color.encoder.ColorEncoder" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

	<title>QRCode</title>

	<meta http-equiv="Content-Type"  content="text/html; charset=utf-8">

	<script type="text/javascript">

		setInterval( function() {

			//var url = "./qrcode";
			var text = document.getElementById("text").value;
			var size = document.getElementById("size").value;
			var imgObj = document.getElementById("qrcode_img");
			var imgObj1 = document.getElementById("qrcode_img1");
			var imgObj2 = document.getElementById("qrcode_img2");
			var imgObj3 = document.getElementById("qrcode_img3");
			
			var txtObj = document.getElementById("text1");
			var txtObj1 = document.getElementById("text2");
			var txtObj2 = document.getElementById("text3");
			var txtObj3 = document.getElementById("text4");
			
			var numObj1 = document.getElementById("num1");
			var numObj2 = document.getElementById("num2");
			var numObj3 = document.getElementById("num3");
			var numObj4 = document.getElementById("num4");
			
			
			
			
			if( text ) {
				text = encodeURIComponent(text);
				//var str_len = parseInt(text.length/3);
				if( size > 0 && size < 500 ) {
					var url = "./qrcode" + "?width=" + size + "&height=" + size + "&text=" + text+"&index=0";
					imgObj.src = url;
					var url1 = "./qrcode" + "?width=" + size + "&height=" + size + "&text=" + text+"&index=1";
					imgObj1.src = url1;
					var url2 = "./qrcode" + "?width=" + size + "&height=" + size + "&text=" + text+"&index=2";
					imgObj2.src = url2;
					var url2 = "./color" + "?width=" + size + "&height=" + size + "&text=" + text+"&index=2";
					imgObj3.src = url2;
					var turl = "./split" + "?text=" + text + "&index=0";
					txtObj.src = turl;
					
					var turl2 = "./split" + "?text=" + text + "&index=1";
					txtObj1.src = turl2;
					
					var turl3 = "./split" + "?text=" + text + "&index=2";
					txtObj2.src = turl3;
					
					text = decodeURIComponent(text);
					var str_len = parseInt(text.length/3);
					txtObj.value = (text.substring(0, str_len));
					txtObj1.value = (text.substring(str_len, str_len+str_len));
					txtObj2.value = (text.substring(str_len+str_len, text.length+1));
					txtObj3.value = (text);
					
					numObj1.value = txtObj.value.length;
					numObj2.value = txtObj1.value.length;
					numObj3.value = txtObj2.value.length;
					numObj4.value = txtObj3.value.length;
					
					
				}

			}

		}, 1000 );
						

	</script>

</head>

<body>

	<form>
		Text : <input type="text" id="text" value="TEST_COLOR_QRCODE"/><br/>
		Size : <input type="text" id="size" value="100"/><br/>
	
		 
		<table border=1>
			<tr align="center">
			    <td>kind</td>
				<td>R</td>
				<td>G</td>
				<td>B</td>
				<td>RGB</td>			
			</tr>
			<tr>
				<td>Splited lengths</td>
				<td><input type="text" id="num1" value="" STYLE="width:100px;"/></td>
				<td><input type="text" id="num2" value="" STYLE="width:100px;"/></td>
				<td><input type="text" id="num3" value="" STYLE="width:100px;"/></td>
				<td><input type="text" id="num4" value="" STYLE="width:100px;"/></td>								
			</tr>
			<tr>
				<td>
				Splited strings
				</td>
				<td>
				<input type="text" id="text1" value="" STYLE="width:100px;"/>
				
				</td>
				<td>
				<input type="text" id="text2" value="" STYLE="width:100px;"/>
				
				</td>
				<td>
				<input type="text" id="text3" value="" STYLE="width:100px;"/>				
				</td>
				<td><input type="text" id="text4" value="" STYLE="width:100px;"/></td>			
			</tr>
			<tr> 
				<td>Splited code</td>
				<td><img id="qrcode_img" style="display:none" onload="this.style.display='block'" /></td>
				<td><img id="qrcode_img1" style="display:none" onload="this.style.display='block'" /></td>
				<td><img id="qrcode_img2" style="display:none" onload="this.style.display='block'" /></td>
				<td><img id="qrcode_img3" style="display:none" onload="this.style.display='block'" /></td>		
			</tr>
		</table>
	</form>

</body>

</html>
