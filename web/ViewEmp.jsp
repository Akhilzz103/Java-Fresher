<%-- 
    Document   : ViewEmp
    Created on : 10 Dec, 2021, 12:39:08 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Employee> list = EmpDao.getAllRecords();
            request.setAttribute("list", list);
        %>  
        <table border="1" width="90%">  
            <tr><th>Id</th><th>Name</th><th>Address</th><th>Email</th>  
                <th>Age</th><th>Contact</th><th>Edit</th><th>Delete</th></tr>  
            <c:forEach items="${list}" var="u">  
                <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getAddress()}</td>  
                    <td>${u.getEmail()}</td><td>${u.getAge()}</td><td>${u.getContact()}</td>  
                    <td><a href="EditEmp.jsp?id=${u.getId()}">Edit</a></td>  
                    <td><a href="DeleteEmp.jsp.jsp?id=${u.getId()}">Delete</a></td></tr>  
            </c:forEach>  
        </table> 
    </body>
</html>
