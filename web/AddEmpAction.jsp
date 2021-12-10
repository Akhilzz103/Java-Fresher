<jsp:useBean id="e" class="Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="e"/>  
<%
    EmpDao emp=new EmpDao();
    int i = emp.save(e);
    if (i > 0) {
        response.sendRedirect("RegEmpSuccess.jsp");
    } else {
        response.sendRedirect("EmpRegFailed.jsp");
    }
%> 