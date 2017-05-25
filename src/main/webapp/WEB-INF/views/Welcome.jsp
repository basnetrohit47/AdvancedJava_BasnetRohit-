<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="load();">
<h1> Welcome to my WEb App</h1>
<div class="jumbotron text-center">
  <h1>My First Bootstrap Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>

<input type="hidden" id="userid">
 Name: <input type="text" id="name" required="required" name="username"><br>
        Email: <input type="email" id="email" required="required" name="email"><br>
         Email: <input type="text" id="fullname" required="required" name="fullname"><br>
        <button onclick="submit();">Submit</button>
     
     
 
        <table id="table" border=1>
            <tr> <th> Name </th> <th> Email </th> <th> Edit </th> <th> Delete </th> </tr>
         
        </table>
             
<script type="text/javascript">
    data = "";
    submit = function(){
          
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{userid:$("#userid").val(),username:$('#name').val(),email:$('#email').val(),fullname:$('#fullname').val()},
                success: function(response){
                        alert(response.message);
                        load();    
                }              
            });        
    }
     
    delete_ = function(id){     
         $.ajax({
            url:'delete',
            type:'POST',
            data:{userid:id},
            success: function(response){
                    alert(response.message);
                    load();
            }              
        });
}
     
 
    edit = function (index){
        $("#userid").val(data[index].userid);
        $("#name").val(data[index].username);
        $("#email").val(data[index].email);
        $("#fullname").val(data[index].fullname);
         
    }
     
     
    load = function(){ 
        $.ajax({
            url:'list',
            type:'POST',
            success: function(response){
                    data = response.data;
                    $('.tr').remove();
                    for(i=0; i<response.data.length; i++){                  
                        $("#table").append("<tr class='tr'> <td> "+response.data[i].username+" </td><td> "+response.data[i].fullname+" </td> <td> "+response.data[i].email+" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].userid+");'> Delete </a>  </td> </tr>");
                    }          
            }              
        });
         
    }
         
    </script>
</body>
</html>