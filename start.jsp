<%-- 
    Document   : Start
    Created on : Feb 29, 2024, 10:19:52 PM
    Author     : hacker2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Page</title>
    </head>
    <body>
        <h1>Start</h1>
        <%
            String player_name=pageContext.getServletContext().getInitParameter("player_name");
            String computer_name=pageContext.getServletContext().getInitParameter("computer_name");
        %>
        <p>
            Hi <%= player_name %> my name is <%= computer_name %> your play mate. Let's start the game. 
        </p>
        <form action="RockPaperScissorServlet.do" method="POST">
            <table>
                <tr>
                    <td>Make a choice</td>
                    <td>
                        <select name="choice">
                            <option value="R">Rock</option>
                            <option value="P">Paper</option>
                            <option value="S">Scissor</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Play" required=""/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
