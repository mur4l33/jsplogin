<%-- 
    Document   : index
    Created on : 23-Aug-2021, 9:47:27 am
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1><a href="selectall.jsp">Author Database</a></h1>
        <br/><!-- comment -->
        <hr/>
        <div class="container">
            <div class="row">
                
                <div>
                     <form action="login.jsp" method="POST">
                        <div class="form-group">
                            <h2>Login</h2>
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" id ="unmae" name="uname" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" id ="pass" name="pass" class="form-control"/>
                        </div>
                         <div class="form-group">
                             <button type="submit" class="btn btn-sucess">Submit</button>
                        </div>
            
                     </form>
                </div>
            </div>
            
        </div>
       
        
    </body>
</html>