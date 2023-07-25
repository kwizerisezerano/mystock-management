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
    
    <div style="background-color:white;width:700px;margin-left:400px;">
    <h1 style="color:blue;font-family:Algerian; text-align:center;">PRODUCT MANAGEMENT SYSTEM</h1>
    <h2 style="color:blue;font-family:Algerian; text-align:center;">**************************************</h2>
        
       <center>
    <form action="" method="POST">
<table style="background-color:white">
<tr><th colspan="2"><h4  style="color:darkblue;font-family:helvetica; "><center>Welcome to buyers records deletion</center></h4></th>
<tr>
<td>Buyer ID</td>
<td><input type="text" required="" name="bid"></td>
</tr>


<tr>
<td><input type="submit" value="Remove  record"style="background-color:blue;color:white;width:250px;height:30px;border-radius:5px;border:0px;"></td>
<td><input type="reset" value="Clear contents"style="background-color:blue;color:white;width:250px;height:30px;border-radius:5px;border:0px;"></td>
</tr>
</table>
</form>
<table border="2" style="background-color:white">
        <tr>
            <th>Buyer_id</th>
            <th>Buyer name</th>
            <th>Product name</th>
            <th>date bought</th>
            <th>Product price</th>
            <th colspan="4">Manager</th>
            
        </tr>
        <% 
            try {
                // Load the MySQL JDBC driver
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystock","root","");
                
                
                // Create the SQL query
                String sql = "SELECT * FROM buyers";
                Statement mystatement = conn.createStatement();
                ResultSet view = mystatement.executeQuery(sql);
                
                // Iterate through the result set and display data in the table
                while (view.next()) {
                    int id = view.getInt("buyerid");
                    String name = view.getString("buyername");
                    String marc = view.getString("pname");
                    String size = view.getString("bdate");
                    String prce = view.getString("price");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= name %></td>
            <td><%= marc %></td>
            <td><%= size %></td>
            <td><%= prce %></td>
              <td><a style="text-decoration:none;" href="buyer.jsp">Add buyer record</a></td>
            <td><a style="text-decoration:none;" href="updatebu.jsp">update buyer record</a></td>
            <td><a style="text-decoration:none;" href="deletebu.jsp">delete buyer record</a></td>
            <td><a style="text-decoration:none;" href="login.jsp">Logout</a></td>
        </tr>
        <% 
                }
                // Close the database resources
                view.close();
                mystatement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>

<% 
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystock","root","");
if(request.getMethod().equalsIgnoreCase("post")){
	String bid =request.getParameter("bid");


   
   out.println("name:" + bid);
 
   String insert="DELETE FROM `buyers` WHERE buyerid=?";
     
   PreparedStatement inserti = conn.prepareStatement(insert);
   
  
  inserti.setString(1,bid);
   
   inserti.executeUpdate();

}

   
   
   %>