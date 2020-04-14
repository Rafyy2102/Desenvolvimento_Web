<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean scope="page" id="login" class="br.uninove.seguranca.Usuario"/> 
        
        <jsp:setProperty name="login" property="usuario" value="<%=request.getParameter("usuario")%>"/>
        
        <%
            
        String senha = request.getParameter("senha");
        
        MessageDigest m = MessageDigest.getInstance("MD5");
        m.update(senha.getBytes(), 0, senha.length());
        
        login.setSenha(new BigInteger(1, m.digest()).toString(16));
       
        if(login.autenticaUsuario()){
            session.setAttribute("loginOk", true);
        }else{
            session.setAttribute("loginOk", false);
            response.sendRedirect("index.jsp");
        }

        %>
        
         <h2>Olá ! Você se atenticou! =)</h2>
    </body>
</html>
