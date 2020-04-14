<%-- 
    Document   : geraSession
    Created on : 01/04/2020, 21:20:16
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
        
        <%
            String nome = request.getParameter("nome");
            if (nome == null)
                nome = "";
            
            session.setAttribute("nome", nome);
        %>
        
        <h2>Valor incluído corretamente na Session</h2><br/>
        <a href="verSession.jsp">Ver a Session (chave "nome")...</a><br/>
        <a href="../">Voltar ao painel principal</a>
        
    </body>
    
</html>
