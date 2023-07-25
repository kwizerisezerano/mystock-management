<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="assets\css\bootstrap.min.css">
    <script src="assets\js\bootstrap.bundle.js"></script>
<title>Welcome to home </title>
 <style>
        body{
            background-image: url("b.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
        }
         input,select{
        border-radius:5px;
        width:300px;
        height:30px;
        font-size:15px;
        padding-left:20px;
        font-family:helvetica;
        border:2px solid darkblue;
        outline:0px;
        }
        </style>
</head>
<body class="d-flex justify-content-center align-items-center " style="height:100vh;">
    
    
    <div style="background-color:white;width:500px;margin-left:400px;padding:30px;">
    <h1 style="color:blue;font-family:Algerian; text-align:center;">PRODUCT MANAGEMENT SYSTEM</h1>
    <h2 style="color:blue;font-family:Algerian; text-align:center;">**************************************</h2>  
    
       <center>
      
         <form action="login.jsp" method="post" >
         <table border="0" >
            <tr><th colspan="2"><h4  style="color:darkblue;font-family:helvetica; "><center>Create  your account</center></h4></th>
             <tr><td>   <label for="full name">FullName</label></td>
               <td> <input type="text" name="fname" minlength="3"  required  ></td>
           </tr>
            
            <br>
             
            
              <tr> <td> <label for="user">Username</label></td>
               <td> <input type="text" name="user" minlength="3" pattern="[A-Za-z]+" id="" class="form-control" required  ></td>
           </tr>
           
            <br>
             
            <tr> <td>
                <label for="email">Email</label></td>
               <td> <input type="email" name="email" minlength="3"  required  ></td></tr>
            
            <br>
           
            <tr><td> 
                <label for="status">Role </label></td>
               <td> <select name="role" class="form-control" required>
                    <OPtion value="product">Product manager</OPtion>
                    <OPtion value="seller">Seller manager </OPtion>
                    <OPtion value="buyer">Buyer manager </OPtion>
                    <OPtion value="store">Store manager </OPtion>
                </select></td></tr>
            
            <br>
           
            <tr><td>
                <label for="">Password</label></td><td>
                <input type="password" name="pass" minlength="8"id="" class="form-control" required></td></tr>
          
           <br>
            
            <tr>
<td colspan="2"><button type="submit"  style="background-color:blue;color:white;width:400px;height:30px;border-radius:5px;border:0px;">Register your account</button></td>
</tr>
           
        <tr><td colspan="2"> Alredy have an account <a style="text-decoration:none;" href="login.jsp">Login</a> </td>
</tr>  
       
    </table>
     </center>
      
     
    </div>
</body>
</html>

<% 
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystock","root","");
if(request.getMethod().equalsIgnoreCase("post")){

String fname =request.getParameter("fname");
String user =request.getParameter("user");
String email = request.getParameter("email");
String role =request.getParameter("role");
String pass =request.getParameter("pass");

   
   out.println("welcome to login dear " + fname);
 
   String insert="INSERT INTO `users`(`fullname`, `username`, `email`, `status`, `password`) VALUES ( ?, ?, ?, ?, ?)";
     
   PreparedStatement inserti = conn.prepareStatement(insert);
   
   inserti.setString(1,fname);
   inserti.setString(2,user);
   inserti.setString(3,email);
   inserti.setString(4,role);
   inserti.setString(5,pass);
   
   inserti.executeUpdate();

}

   
   
   %>