<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new book</title>
</head>

<body>


<div>
    <div>
        <h2>Add Book</h2>
    </div>
    <form action="${pageContext.request.contextPath}/add" method="post">
        <label>Title:
            <input type="text" name="title"><br />
        </label>
        <label>Author:
            <input type="text" name="author"><br />
        </label>
        <label>Year:
            <input type="text" name="year"><br />
        </label>
        <button type="submit">Submit</button>
    </form>
</div>

<div>
    <button onclick="location.href='${pageContext.request.contextPath}/list'">View Books</button>
</div>
</body>
</html>
