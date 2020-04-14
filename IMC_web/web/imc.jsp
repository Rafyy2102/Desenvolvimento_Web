<%--
    Document   : imc.jsp
    Created on : 11 de mar de 2020, 20:11:42
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
        <jsp:useBean scope="page" id="imc" class="br.uninove.matematica.Imc"/>
        <jsp:setProperty name="imc" property="peso" value="<%=Float.parseFloat(request.getParameter("peso"))%>"/>
        <jsp:setProperty name="imc" property="altura" value="<%=Float.parseFloat(request.getParameter("altura"))%>"/>

        <h2>Calculo do IMC</h2>
        <br/>
        <hr/>
        <h3>IMC:<%=String.format("%.2f", imc.calculaIMC())%></h3><br/>
        <h3>Clasificação: <%=imc.mentoClassificacao()%></h3>

    </body>
    </html>