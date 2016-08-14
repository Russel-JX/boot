<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>定位</title>
	<script src="../js/jquery1.10.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		
		$("#address").blur(function(){
			//alert("焦点移除文本框！");
			$.ajax({
	    		url:'visitBaiduMap.do',//
				type:'get',
				dataType:'json',
				cache:false,
				/* data:{
					questin_from:questionFrom,
					question_to:questionTo,
					question_name:questionName,
					question_description:questionDescription
				}, */
				beforeSend:function(xhr){
					$("#loading").show();
				},
				complete:function (XMLHttpRequest, textStatus) {
					$("#loading").hide();
				},
				success:function(backData,status){
					alert(backData);
				},
				error:function(XmlHttpRequest){
					alert('error!!!');
				}
	    	});
		});
		
	});
	</script>

</head>
<body>

	<form>
		<label for="address">请输入地址：</label><input type="text" name="address" id="address" autofocus="true"/>
	</form>
	
	<form>
		<label for="address">请输入地址：</label><input type="text" name="address2" id="address2" autofocus="true"/>
	</form>

</body>
</html>