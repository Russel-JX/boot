/*
 * config方法只是对js文件和调用名做了映射，并不会真正加载js文件；
 * 使用require方法加载js文件，要加载哪些js文件自定义（不一定要加载全部映射好的js文件）。
 */
require.config({
	baseUrl:"js",
	//***如果实际js文件指定到目录的话，将映射目录下所有的js文件***
	paths:{
		"jquery":"jquery1.10",
		"boot":"bootstrap",
		"datepicker":"bootstrap-datepicker",
		"timepicker":"bootstrap-datetimepicker",
		"timepicker-cn":"bootstrap-datetimepicker.zh-CN",
		"jquery-ui":"jquery-ui-1.10.4",
		"jquery-validate":"jquery.validate.min",
		"moment":"moment"
	}
	
});

require(["jquery","boot","datepicker","timepicker","timepicker-cn","moment"],function(){
	alert("我只加载了6个js文件");
});