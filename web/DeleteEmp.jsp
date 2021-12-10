<jsp:useBean id="e" class="Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="e"/>  
<%
    EmpDao emp = new EmpDao();
    emp.delete(e);
    response.sendRedirect("RegEmpSuccess.jsp");

%> 