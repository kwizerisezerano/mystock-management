<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%

String username = request.getParameter("user");
String password = request.getParameter("pass");
String role = request.getParameter("role");


	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystock","root","");

	 Statement statement=conn.createStatement();
	 ResultSet set=statement.executeQuery("select * from users");
	 int flage=0;
	 while(set.next()){
		  if(username.equals(set.getString(3))&& password.equals(set.getString(6))){
			  flage=1;
			  
		  }
	             }
	if(flage==1 && role.equalsIgnoreCase("Product_manager")){
		response.sendRedirect("product.jsp");
		
	}
	else if(flage==1 && role.equalsIgnoreCase("Seller_manager")){
		response.sendRedirect("seller.jsp");
	}
	else if(flage==1 && role.equalsIgnoreCase("Buyer_manager")){
		response.sendRedirect("buyer.jsp");
	}
	else if(flage==1 && role.equalsIgnoreCase("Store_manager")){
		response.sendRedirect("store.jsp");
	}
	else{
		response.sendRedirect("login.jsp");
	}
	 
%>

