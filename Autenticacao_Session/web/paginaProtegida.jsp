<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            if (session.getAttribute("loginOK") != null) {
                if (!(Boolean) session.getAttribute("loginOK")) {
                    session.setAttribute("loginOK", false);
                    response.sendRedirect("index.jsp");

                }
            } else {
                session.setAttribute("loginOK", false);
                response.sendRedirect("index.jsp");
            }
        %>
        <h1>Olá! Se você está lendo essa mensagem, então você acessar essa página!! =)</h1>
    </body>
</html>


