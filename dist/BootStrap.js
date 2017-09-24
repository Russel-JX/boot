var myapp = angular.module("myApp",[]);
myapp.controller("myController",function($scope){
	$scope.other="I'm other haha........cccc。。。。。。。。。";  
	$scope.weekDay = "Monday";
	$scope.location = {city:"Shanghai",street:"fangdian 1155"};
	$scope.weather = "sunny";
	$scope.$watch("weekDay",function(newValue,oldValue,scope){
		console.log("oldValue:"+oldValue+",other:"+scope.other+",scope.weekDay:"+scope.weekDay);
		console.log("newValue:"+newValue+",other:"+scope.other+",scope.weekDay:"+scope.weekDay);
	});
	var watched = $scope.$watch("location",function(newValue,oldValue,scope){
		console.log("location old:"+oldValue.city+" "+oldValue.street);
		console.log("location new:"+newValue.city+" "+newValue.street);
		if(newValue.city=="ok"){
			//unwatche model
			watched();
		}
	},true);
	$scope.$watch("weather",function(newValue,oldValue,scope){
		console.log("weather:"+oldValue);
		console.log("weather:"+newValue);
		$scope.weather = "Rainy";
	});
	
	$scope.age = 23;
	$scope.person = {name:"Jack",gender:true};
	var age2 = angular.copy($scope.age);
	var person2 = angular.copy($scope.person);
	$scope.person.name = "Tom";
	console.log("source age:"+$scope.age+",copied value:"+age2);
	console.log("source person:"+$scope.person.name+",copied value:"+person2.name);
});