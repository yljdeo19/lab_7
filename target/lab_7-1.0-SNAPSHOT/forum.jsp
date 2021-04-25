
<%@ page import="com.example.lab_7.Controller.ForumController" %>
<%@ page import="com.example.lab_7.Model.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forum page</title>
</head>
<body>
<%
    ForumController forumController = new ForumController();

    ArrayList<Message> messages = forumController.getForum_messages().getMessagesInForum(1, forumController.getUsersCollection().getConn());

    for (Message message : messages) {
        response.getWriter().println("<h1> " + message.getAuthor() + " </h1>");
        response.getWriter().println("<p> " + message.getMessage() + " </p>");
    }
%>

<form action="/forum" method="post">
    <input type="text" name="message" placeholder="Comment">
    <br>
    <input type="submit" value="Submit">
</form>


</body>
</html>

