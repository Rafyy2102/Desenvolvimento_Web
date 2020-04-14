
<%-- 
    Document   : geraCookie
    Created on : 01/04/2020, 20:32:50
    Author     : RafySan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerador de cookies...</title>
    </head>
    <body>
        
        <% 
            String nome = request.getParameter("nome");
            if(nome == null){
                nome = "";
            }
            
            String codificada = URLEncoder.encode(nome, "UTF-8");
            Cookie cookie = new Cookie("nomeDoUsuario", codificada);
            cookie.setVersion(0);
            cookie.setMaxAge(15);//segundos
            
            response.addCookie(cookie);
        %>
        
        <h2>Cookie gerada com sucesso...!</h2>
        <a href="verCookie.jsp">Ver o que foi gravado...</a>
    </body>
</html>
