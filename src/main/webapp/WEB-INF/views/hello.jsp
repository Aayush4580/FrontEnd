<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
<%@ page isELIgnored="false" %>
</head>
<body>
<center>
	<lebel>Category name</lebel>
	<%-- <select class="form-control" style="width:200px;">
	<option value="-1">Select Category</option>
	<%
	try
	{
		String Query="select * from category";
		Class.forName("org.h2.Driver").newInstance();
		Connection conn=DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(Query);
		while(rs.next())
		{
			%>
			<option value="<%=rs.getString("id")%>"><%=rs.getString("name")%></option>
			<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("Error:"+e.getMessage());
	}
	
	%>
	
	
	
	</select> --%>
	
	
	<sql:setDataSource var = "categoryList" driver = "org.h2.Driver"
         url = "jdbc:h2:~/test"
         user = "sa"  password = "sa"/>

         <sql:query dataSource = "${categoryList}" var = "category">
            SELECT * from Category;
         </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Category ID</th>
            <th>Category Name</th>
            <td>Category Description </td>
			<td colspan="2"> Action</td>
         </tr>
         
         <c:forEach var = "category" items = "${category.rows}">
            <tr>
               <td> <c:out value = "${category.id}"/></td>
               <td> <c:out value = "${category.name}"/></td>
               <td> <c:out value = "${category.description}"/></td>
               <td><a href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td>
					
	  <td><a href="<c:url value='/manage_category_delete/${category.id}' />">Delete</a></td>
               
            </tr>
         </c:forEach>
      </table>

</center>
</body>
</html>