<%
    String uname = request.getParameter("uname");
    String password = request.getParameter("pass");
    if(uname.equals("murali") && password.equals("1234")){
        out.println("Login Success");
    }else{
        out.println("Login failed");
    }
 %>
