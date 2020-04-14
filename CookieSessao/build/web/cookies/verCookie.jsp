<%-- 
    Document   : verCookie
    Created on : 01/04/2020, 20:49:50
    Author     : RafySan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Cookie</title>
    </head>
    
    <%
        String nomeDaCookie = "nomeDoUsuario";
        Cookie cookies[] = request.getCookies();
        Cookie cookieLocal = null;

        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals(nomeDaCookie)) {
                    cookieLocal = cookies[i];
                    break;
                }
            }
        }
    %>
        
    <body>
         
      <%
        if (cookieLocal == null) {
            out.print("Não achei a cookie!");
        } else {
            String valor = URLDecoder.decode(cookieLocal.getValue(), "UTF-8");
            out.print("Valor da cookie: " + valor);
            }
      %>
      
      </body> 
</html>
