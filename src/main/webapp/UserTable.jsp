<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es" >

<head>

<script src="<c:url value="/resources/js/crudApp.js" />"></script>
<script src="<c:url value="/resources/js/Controller.js" />"></script>
<script src="<c:url value="/resources/js/Factory.js" />"></script>
    <meta charset="UTF-8">
    <title>UserTable</title>
    <!--CSS-->
    <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
</head>



<body data-ng-app="crud" data-ng-controller="crudCtrl" >

<form name="userForm" data-ng-submit="submitform()">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" data-ng-model="user.fullname">
        <span ng-show="errorName">{{errorName}}</span>
    </div>
    <div class="form-group">
        <label>Username</label>
        <input type="text" name="username" class="form-control" data-ng-model="user.username">
        <span ng-show="errorUserName">{{errorUserName}}</span>
    </div>
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" data-ng-model="user.email">
        <span ng-show="errorEmail">{{errorEmail}}</span>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>


<form class="form-inline well well-sm clearfix">
                <span class="glyphicon glyphicon-search"></span>
                <input 
                    type="text" 
                    placeholder="Search..." 
                    class="form-control"
                    data-ng-model="search">
               
            </form>
<div class="col-md-8 col-md-offset-2">
    <h1>UserTable
        <a href="registrousuario.php" class="btn btn-primary pull-right menu"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;New User</a>
    </h1>
</div>
<div class="col-md-8 col-md-offset-2" >
    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>Usuario</th>
            <th>Password</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Status</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
          <tr ng-repeat="all in userdata.data |filter:search">
           <td>{{all.id}}</td>
          <td>{{all.username}}</td>
          <td>{{all.email}}</td>
          <td>{{all.fullname}}</td>
            <td>{{all.email}}</td>
          <td>
                    <button class="btn btn-xs btn-primary" data-ng-click="onEdit($index)" data-ng-hide="editRow==$index" style="min-width:70px;">
                        <span class="glyphicon glyphicon-pencil "></span>&nbsp;edit
                    </button>
                    <button class="btn btn-xs btn-danger" data-ng-hide="editRow==$index" data-ng-click="Delete(all)" style="min-width:70px;">
                            <span class=" glyphicon glyphicon-trash "></span>&nbsp;delete
                        </button>
          </tr>

        </tbody>
        <tfoot>
        <tr>
          <th>Usuario</th>
          <th>Password</th>
          <th>Nombre</th>
          <th>Tipo</th>
          <th>Status</th>
          <th>Acciones</th>
        </tr>
        </tfoot>
    </table>
</div>





 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/crudApp.js" />"></script>
<script src="<c:url value="/resources/js/Controller.js" />"></script>
<script src="<c:url value="/resources/js/Factory.js" />"></script>
</body>
</html>
