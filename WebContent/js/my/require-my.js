/*
			require(["a.js","b.js","c.js"],function(){});,数组方式加载js文件会同时加载js文件（从调试工具timeline可以看出）,a,b,c.js文件全部加载完成后，执行回调；
			require("a.js","b.js","c.js",function(){});,单个单个方式会按顺序组个加载js文件(好像新版本require.js不支持此方式)
		
		*/
require(["js/bootstrap.js","js/bootstrap-datepicker.js","js/jquery-ui-1.10.4.js"],function(){
	alert("Yes");
});