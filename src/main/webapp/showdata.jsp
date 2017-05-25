<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular.min.js"></script>
</head>
<body ng-app="git">
<div ng-controller="MainCtrl">


<div ng-repeat="post in posts">
{{post.id}}</div>
</div>
this is fun





<script type="text/javascript">
var app=angular.module('git',[]);
app.controller("MainCtrl",['$scope','$http',function($scope,$http){
var v=$scope;
v.greeting='hello';
$http({
method:'GET',
url:'listall'
}).then(function successCallback(response){
v.posts=response.data;
},function errorCallback(response){

}
)



}]);
</script>
</body>
</html>