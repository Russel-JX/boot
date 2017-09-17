var myapp = angular.module("myApp",[]);
myapp.controller("myController",function($scope){
	$scope.items = [
	                {address:"Shanghai",salary:1000},
	                {address:"Beijing",salary:800},
	                {address:"Suzhou",salary:500}
	                ];
	$scope.items2 = [
	                [{address:"Shanghai",salary:1000},{address:"Beijing",salary:800},{address:"Suzhou",salary:500}],
	                [{address:"Hangzhou",salary:1000},{address:"Xiamen",salary:800},{address:"Tianjin",salary:500}],
	                [{address:"Guangzhou",salary:1000},{address:"Fujian",salary:800},{address:"Xianggang",salary:500}]
	];
	$scope.items3 = [
		                [{address:"Huaian",population:1000},{address:"Nanjing",population:800},{address:"Suzhou",population:500}],
		                [{address:"Huangzhou",population:1000},{address:"Ningbo",population:800},{address:"Jiaxing",population:500}],
		                [{address:"Qingdao",population:1000},{address:"Zibo",population:800},{address:"Yantai",population:500}]
	];
	
	
});