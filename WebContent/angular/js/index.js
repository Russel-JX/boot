var myapp = angular.module("myApp",[]);
myapp.controller("myController",function($scope){
	$scope.errorFlag = false;
	$scope.user = {
			name : "Russell",
			age : 27
	};
	$scope.checkPass = function(){
		if($scope.password != "123"){
			$scope.errorFlag = true;
		}else{
			$scope.errorFlag = false;
		}
	}
	
});