<%-- 
    Document   : verSession
    Created on : 01/04/2020, 21:26:09
    Author     : RafySan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Valor que está na session...:. <%=session.getAttribute("nome")%>
    </body>
</html>
