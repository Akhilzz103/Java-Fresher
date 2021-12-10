<%-- 
    Document   : EmpReg
    Created on : 10 Dec, 2021, 10:29:48 AM
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
        <form action="AddEmpAction.jsp" method="post">
            <table style="with: 80%">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" /></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" name="age" /></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" /></td>
                </tr>
                
            </table>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
