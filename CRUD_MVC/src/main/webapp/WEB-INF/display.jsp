<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.Book"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>All Books</h1>
 
<% List<Book> books=(List<Book>)request.getAttribute("books"); 
 String path=request.getContextPath(); %>

<%--
<%for(Book book:books){ %>
<%=book.getTitle() %>
<%=book.getAuthor() %>
<%=book.getBookId() %>
<%=book.getPublication() %>
<%=book.getPrice() %>
<%} %>



<table border="1">
<caption>All Books</caption>
<tr>
<th>bookId</th>
<th>title</th>
<th>author</th>
<th>publication</th>
<th>price</th>
<th>delete</th>
<th>update</th>
</tr>
<tr><%for(Book book:books){ %>
<td><%=book.getBookId() %></td>
<td><%=book.getTitle() %></td>
<td><%=book.getAuthor() %></td>
<td><%=book.getPublication() %></td>
<td><%=book.getPrice() %></td>
<td><a href="<%=path %>/delete/<%=book.getBookId()%>">Delete</a></td>
<td><a href="<%=path %>/update/<%=book.getBookId()%>">Update</a></td>


</tr>
<%} %>

</table>


</body>
</html>
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Book"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Books</title>
    <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 40px;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        caption {
            caption-side: top;
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #34495e;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }
        th {
            background-color: #2980b9;
            color: #ffffff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #eaf2f8;
        }
        .action-link {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 4px;
            color: #ffffff;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .delete-link {
            background-color: #e74c3c;
        }
        .delete-link:hover {
            background-color: #c0392b;
        }
        .update-link {
            background-color: #27ae60;
        }
        .update-link:hover {
            background-color: #1e8449;
        }
    </style>
</head>
<body>
    <h1>All Books</h1>
    <%
        List<Book> books = (List<Book>) request.getAttribute("books");
        String path = request.getContextPath();
    %>
    <table>
        <caption>Book Inventory</caption>
        <thead>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Publication</th>
                <th>Price</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <% for (Book book : books) { %>
                <tr>
                    <td><%= book.getBookId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getPublication() %></td>
                    <td><%= book.getPrice() %></td>
                    <td>
                        <a class="action-link delete-link" href="<%= path %>/delete/<%= book.getBookId() %>">Delete</a>
                    </td>
                    <td>
                        <a class="action-link update-link" href="<%= path %>/update/<%= book.getBookId() %>">Update</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>

