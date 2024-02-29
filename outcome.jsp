<%-- 
    Document   : outcome
    Created on : Feb 29, 2024, 11:39:05 PM
    Author     : hacker2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
            String player_name=pageContext.getServletContext().getInitParameter("player_name");
            String computer_name=pageContext.getServletContext().getInitParameter("computer_name");
            Character playerChoice = (Character) request.getAttribute("userChoice");
            Character computerChoice = (Character) request.getAttribute("computerChoice");
            String outcome = (String) request.getAttribute("outcome");
        %>
        <p>
            Bellow is the output. 
        </p>
            <table>
                <tr>
                    <td><%= player_name %></td>
                    <td><%= playerChoice %></td>
                </tr>
                <tr>
                    <td><%= computer_name %></td>
                    <td><%= computerChoice %></td>
                </tr>
                <tr>
                    <td><%= outcome %></td>
                </tr>
            </table>
                <p>
                    Please click <a href="index.html">here</a> to go back to the main page
                    or click <a href="start.jsp">here</a> to continue playing.
                </p>
    </body>
</html>
