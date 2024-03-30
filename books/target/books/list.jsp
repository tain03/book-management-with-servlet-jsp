<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Books</title>
</head>

<body>
<div>
    <h1>Book Management!</h1>
</div>

<div>
    <div>
        <h2>Books</h2>
    </div>
    <%
        List<String> names = (List<String>) request.getAttribute("Titles");

        if (names != null && !names.isEmpty()) {
            out.println("<ul>");
            for (String name : names) {
                out.println("<li>" + name + "</li>");
            }
            out.println("</ul>");
        } else {
            out.println("<p>There are no books yet!</p>");
        }
    %>
</div>

<div>
    <button onclick="location.href='<%= request.getContextPath() %>/add'">Add Book</button>
</div>
</body>
</html>
