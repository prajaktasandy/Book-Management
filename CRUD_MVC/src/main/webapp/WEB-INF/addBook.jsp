<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Add new book here</h1>
<form action="bookAdded" method="post">
<input type="text" placeholder="enter book Id" name="bookId"><br><br>
<input type="text" placeholder="enter title" name="title"><br><br>
<input type="text" placeholder="enter author" name="author"><br><br>
<input type="text" placeholder="enter publication" name="publication"><br><br>
<input type="text" placeholder="enter price" name="price"><br><br>
<button type="submit">Add New book </button>

</form>

</body>
</html>
 --%>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Book</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: #f2f2f2;
    }

    .form-container {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: white;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        width: 80%;
        max-width: 400px;
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 1.5rem;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    @media (max-width: 500px) {
        .form-container {
            padding: 20px;
        }

        h1 {
            font-size: 1.2rem;
        }
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Add new book here</h1>
    <form action="bookAdded" method="post">
        <input type="text" placeholder="Enter Book ID" name="bookId" required><br>
        <input type="text" placeholder="Enter Title" name="title" required><br>
        <input type="text" placeholder="Enter Author" name="author" required><br>
        <input type="text" placeholder="Enter Publication" name="publication" required><br>
        <input type="text" placeholder="Enter Price" name="price" required><br>
        <button type="submit">Add New Book</button>
    </form>
</div>

</body>
</html>
 