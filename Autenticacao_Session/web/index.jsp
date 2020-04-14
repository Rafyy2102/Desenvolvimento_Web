<%-- 
    Document   : index
    Created on : 08/04/2020, 20:02:50
    Author     : RafySan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilo.css" type="text/css">
    </head>
    <body>
        <br/><br/>
        <%
           //se você redirecionar para o login.jsp quando o usuário errar, usar este código para exibir o erro
            //se não quiser usar JavaScript

            if (!session.isNew()) { //verifica se a sessão já existe
                if (session.getAttribute("loginOK") != null) {
                    if (!(Boolean) session.getAttribute("loginOK")) {
                        out.println("<div class='erroLogin'>Erro de login</div>");
                    }
                }
            }
        %>
        <br/>
        <div class="divLogin">
            <form method="post" action="processaLogin.jsp">
                Usuário:<br/>
                <input type="text" name="usuario" placeholder="Digite seu usuário"/>
                <br/><br/>
                Senha:<br/>
                <input type="password" name="senha" placeholder="Digite sua senha"/>
                <br/><br/><br/>
                <input type="submit" value="Entrar..." class="btLogin"/>
            </form>
        </div>
        
    </body>
</html>
