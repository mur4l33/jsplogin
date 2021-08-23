<%-- 
    Document   : selectall
    Created on : 23-Aug-2021, 11:51:42 am
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB Manipulation</title>
    </head>
    <body>
        <%
            

            try{
                final String DB_URL = "jdbc:mysql://localhost/BOOKS";
                final String USER = "root";
                final String PASS = "root";
                final String QUERY = "SELECT * FROM AUTHOR";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(QUERY);
                if(rs.next()==false){
                    out.println("No records found in table");
                }else{
                    %>
                    <table border ="1">
                        <th>AUTHOR ID </th>
                        <th>FIRST NAME </th>
                        <th>LAST NAME </th>
                        <% do{%>
                        <tr>
                            <td>
                                <%=rs.getString(1)%>
                            </td>
                            <td>
                                <%=rs.getString(2)%>
                            </td>
                            <td>
                                <%=rs.getString(3)%>
                            </td>
                        </tr>   
                            <% }while(rs.next()); %> 
                    </table>
                    <%
                }
            }catch(Exception e){
                e.getStackTrace();
            }
            %>
    </body>
</html>
