<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 7/15/24
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404</title>
    <script src="../static/js/tailwind.min.js"></script>
    <script src="../static/js/tailwind.config.js"></script>
    <link rel="shortcut icon" href="../static/img/Jira.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            background: #F5EDDF;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }
        .image {
            width: 100%;
            max-width: 30rem; /* equivalent to max-w-md */
            border-radius: 0.375rem; /* equivalent to rounded-md */
        }
        .title {
            font-size: 2rem; /* equivalent to text-3xl */
            color: #4A4A4A; /* equivalent to text-gray-800 */
            margin-top: 3rem; /* equivalent to mt-12 */
            font-family: 'Poppins', sans-serif; /* font-poppins */
            font-weight: bold; /* font-bold */
        }
        .subtitle {
            font-size: 1rem; /* equivalent to md:text-lg */
            color: #6C6C6C; /* equivalent to text-gray-600 */
            margin-top: 2rem; /* equivalent to mt-8 */
        }
    .link-button{
        padding: 12px;
        border-radius: 10px;
        text-align: center;
        background: #30a380;
        text-decoration: none;
        color: #F8F7F3;
    }
    .flex{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-content: center;
    }
    </style>
</head>
<body>
<div class="container">
    <img src="https://res.cloudinary.com/dt9d7lbhg/image/upload/v1723689172/404Image_bydp93.png" alt="imagen" class="image">
    <div class="flex">
        <p class="title">Página No Encontrada</p>
        <p class="subtitle">No se encontró la página solicitada</p>
        <a href="<%=request.getContextPath()%>/index.jsp" class="link-button" title="Return Home">
            Volver a la tienda
        </a>
    </div>
</div>
</body>
</html>
