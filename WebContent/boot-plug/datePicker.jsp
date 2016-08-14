<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>时间选择器</title>

	<link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/boot-datepicker.css">

	
	<script type="text/javascript" src="../js/jquery1.10.js"> </script>
	<script type="text/javascript" src="../js/moment.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<!-- <script type="text/javascript" src="../js/jquery-ui-1.8.16.custom.min.js"> </script> -->
	
	<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"> </script>
	<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js"> </script>
	
	<script type="text/javascript" src="../js/bootstrap-datepicker.js"> </script>
	

</head>
<body>
	<div class="container">
		<div class="row">
			<div class='col-sm-6'>
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2' data-date-format="YYYY/MM/DD" >
						<input type='text' class="form-control"
							 /> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-calendar"></span> </span>
					</div>
				</div>
			</div>
			<script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                	language:'zh-CN' 
                });
            });
        </script>
		</div>
	</div>

<h3>最新的datetimepicker需加上moment.js才能使本地化语言.js生效</h3>
<h3>docs:http://eonasdan.github.io/bootstrap-datetimepicker/#example5</h3>

<h3>bootstrap-datepicker</h3>
<input type="text" id="date1"  class="form-control" size="16" value="2014"/>
<div class="input-append date" id="date2" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
				<input class="span2" size="16" type="text" value="12-02-2012" readonly="">
				<span class="add-on"><i class="glyphicon glyphicon-calendar"></i></span>
			  </div>
<script type="text/javascript">
	$('#date1').datepicker({
		format: 'dd-mm-yyyy'
	});
	$('#date2').datepicker({
		format: 'dd-mm-yyyy'
	});
</script>

<!-- 
	必须的引用文件：
<head>
  <script type="text/javascript" src="/bower_components/jquery/jquery.min.js"></script>
  <script type="text/javascript" src="/bower_components/moment/min/moment.min.js"></script>
  <script type="text/javascript" src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
  <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />
</head> -->


</body>
</html>