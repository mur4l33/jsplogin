<%-- 
    Document   : books
    Created on : 23-Aug-2021, 12:53:00 pm
    Author     : Administrator
--%>



<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books shopping cart page </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <p>  <a>Home</a>    <a>Checkout</a></p>
            
        <%
            try{
                final String DB_URL = "jdbc:mysql://localhost/BOOKS";
                final String USER = "root";
                final String PASS = "root";
                final String QUERY = "SELECT * FROM BOOKS";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(QUERY);
                if(rs.next()==false){
                    out.println("No records found in table");
                }else{
                    %>
                    <% do{%>
                    
                        <div class="card" style="width: 18em;height:30em;">
                            <img class="card-img-top" src="<%=rs.getString(6)%>" alt="Card image cap" style="justify-content: center;width: 18rem;height:12em;">
                            <div class="card-body">
                              <h5 class="card-title"><%=rs.getString(2)%></h5>
                              <p class="card-text"><%=rs.getString(4)%></p>
                            </div>
                            <ul class="list-group list-group-flush">
                              <li class="list-group-item">by <%=rs.getString(3)%></li>
                              <li class="list-group-item">Price : <%=rs.getString(5)%></li>
                            </ul>
                            <div class="card-body  ">
                                <button class="btn-primary">Buy now</button>
                            </div>
                          </div>
                          <br/>
                          <br/>
                          <br/>
                          <br/>
                            <% }while(rs.next()); %> 
                    <%
                }
            }catch(Exception e){
                e.getStackTrace();
            }
            %>
    </body>
</html>
