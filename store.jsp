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
<tr><th colspan="2"><h4  style="color:darkblue;font-family:helvetica; "><center>Get more details about this system</center></h4></th>
<tr>
<td>Stock name</td>
<td><input type="text"  required="" name="stockname"></td>
</tr>
<tr>
<td>Stock manager</td>
<td><input type="text" required="" name="manager"></td>
</tr>
<tr>
<td>Ingoing product </td>
<td><input type="text"  required="" name="in"></td>
</tr>
<tr>
<td>Ingoing product  date</td>
<td><input type="datetime-local"  required="" name="indate"></td>
</tr>
<tr>
<td>Outgoing product </td>
<td><input type="text"  required="" name="out"></td>
</tr>
<td>Outgoing product  date</td>
<td><input type="datetime-local"  required="" name="outate"></td>
</tr>
<tr>

<tr>
<td><input type="submit" value="Add record"style="background-color:blue;color:white;width:250px;height:30px;border-radius:5px;border:0px;"></td>
<td><input type="reset" value="Clear content"style="background-color:blue;color:white;width:250px;height:30px;border-radius:5px;border:0px;"></td>
</tr>
</table>
</form>
<table border="2" style="background-color:white">
        <tr>
            <th>store id</th>
            <th>Stock name</th>
            <th>Manager</th>
            <th>Ingoing</th>
            <th>Ingoing date</th>
            <th>Outgoing </th>
            <th>Outgoing date</th>
            <th colspan="2">Manager</th>
            
        </tr>
        <% 
            try {
                // Load the MySQL JDBC driver
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystock","root","");
                
                
                // Create the SQL query
                String sql = "SELECT * FROM store";
                Statement mystatement = conn.createStatement();
                ResultSet view = mystatement.executeQuery(sql);
                
                // Iterate through the result set and display data in the table
                while (view.next()) {
                    int id = view.getInt("stroreid");
                    String name = view.getString("stockname");
                    String man = view.getString("manager");
                    String in = view.getString("ingoing");
                    String indate = view.getString("ingoingdate");
                    String outi = view.getString("outgoing");
                    String outdate = view.getString("outgoingdate");
                    
        %>
        <tr>
            <td><%= id %></td>
            <td><%= name %></td>
            <td><%= man %></td>
            <td><%= in %></td>
            <td><%= indate %></td>
            <td><%= outi %></td>
            <td><%= outdate %></td>
              <td><a style="text-decoration:none;" href="store.jsp">Add store record</a></td>
            <td><a style="text-decoration:none;" href="updatesto.jsp">update store record</a></td>
            <td><a style="text-decoration:none;" href="deletesto.jsp">delete store record</a></td>
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

String stockname =request.getParameter("stockname");
String manager =request.getParameter("manager");
String ingoing = request.getParameter("in");
String indate =request.getParameter("indate");
String outgoing =request.getParameter("out");
String outdate =request.getParameter("outate");

   
   out.println("name:" + stockname);
 
   String insert="INSERT INTO `store`( `stockname`, `manager`, `ingoing`, `ingoingdate`, `outgoing`, `outgoingdate`) VALUES ( ?, ?, ?, ?, ?, ?)";
     
   PreparedStatement inserti = conn.prepareStatement(insert);
   
   inserti.setString(1,stockname);
   inserti.setString(2,manager);
   inserti.setString(3,ingoing);
   inserti.setString(4,indate);
   inserti.setString(5,outgoing);
   inserti.setString(6,outdate);
   
   inserti.executeUpdate();

}

   
   
   %>