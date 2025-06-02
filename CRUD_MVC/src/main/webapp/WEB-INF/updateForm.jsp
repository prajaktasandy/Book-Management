<%---
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Book book=(Book)request.getAttribute("book"); %>
<h1>update book data here</h1>
<form action="updateSuccess" method="post">
<input type="text" placeholder="enter book Id" name="bookId" value="<%=book.getBookId()%>" readonly="true"><br><br>
<input type="text" placeholder="enter title" name="title" value="<%=book.getTitle()%>"><br><br>
<input type="text" placeholder="enter author" name="author" value="<%=book.getAuthor()%>"><br><br>
<input type="text" placeholder="enter publication" name="publication" value="<%=book.getPublication()%>"><br><br>
<input type="text" placeholder="enter price" name="price" value="<%=book.getPrice()%>"><br><br>
<button type="submit">update </button>

</form>
</body>
</html>
 --%>
 
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 500px;
            margin: 80px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 30px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555555;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[readonly] {
            background-color: #e9e9e9;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            Book book = (Book) request.getAttribute("book");
        %>
        <h1>Update Book Details</h1>
        <form action="updateSuccess" method="post">
            <label for="bookId">Book ID</label>
            <input type="text" id="bookId" name="bookId" value="<%= book.getBookId() %>" readonly>

            <label for="title">Title</label>
            <input type="text" id="title" name="title" value="<%= book.getTitle() %>" required>

            <label for="author">Author</label>
            <input type="text" id="author" name="author" value="<%= book.getAuthor() %>" required>

            <label for="publication">Publication</label>
            <input type="text" id="publication" name="publication" value="<%= book.getPublication() %>" required>

            <label for="price">Price</label>
            <input type="text" id="price" name="price" value="<%= book.getPrice() %>" required>

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
 