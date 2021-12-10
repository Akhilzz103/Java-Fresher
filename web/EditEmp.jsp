<%-- 
    Document   : EditEmp
    Created on : 10 Dec, 2021, 12:43:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Employee u = EmpDao.getRecordById(Integer.parseInt(id));
        %>  
        <form action="EditEmp.jsp" method="post">
         
                    
            <input type="hidden" name="name"  value="<%=u.getId() %>"/>
              
            <table style="with: 80%">
                
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"  value="<%=u.getName()%>"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" value="<%=u.getAddress()%>"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" name="age" value="<%=u.getAge()%>"/></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact" value="<%=u.getContact()%>"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="<%=u.getEmail()%>"/></td>
                </tr>

            </table>
            <input type="submit" value="Submit" />
        </form>

    </body>
</html>
