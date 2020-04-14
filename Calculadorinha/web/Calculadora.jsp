<%-- 
    Document   : Calculadora
    Created on : 4 de mar de 2020, 20:26:13
    Author     : RafySan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <hr/>
        <br/>
        <%
            //Declarações de variaveis
            String ValorA, ValorB;
            float v1, v2, soma, mult, divi, sub;
            //outra forma de se fazer
            //v1 = Float.parseFloat(request.getParameter("valorA"));
            //v2 = Float.parseFloat(request.getParameter("valorB"));
            
            //Recuperação do Post do Form
            ValorA= request.getParameter("valorA");
            ValorB= request.getParameter("valorB");
            
            //Cast(conversão)
            v1 = Float.parseFloat(ValorA);
            v2 = Float.parseFloat(ValorB);
            
            soma = v1 + v2;
            mult = v1 * v2;
            divi = v1 / v2;
            sub = v1 - v2;
        %>
        <h2>A soma é: <%=soma%><h2/><br/>
        <h2>A multiplicaçãoé: <%=mult%><h2/><br/>
        <h2>A divisão é: <%=divi%><h2/><br/>
        <h2>A subtração é: <%=sub%><h2/><br/>
            
    </body>
</html>
