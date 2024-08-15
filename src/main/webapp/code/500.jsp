<%--
  Created by IntelliJ IDEA.
  User: moonp
  Date: 7/30/2024
  Time: 3:18 PM
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
    <title>500</title>
    <script src="../static/js/tailwind.min.js"></script>
    <script src="../static/js/tailwind.config.js"></script>
    <link rel="shortcut icon" href="../static/img/Jira.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #F3F4F6; /* equivalent to bg-bg400 */
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }
        .image-container {
            margin-bottom: 1rem; /* equivalent to mb-4 */
        }
        .image {
            width: 100%;
            max-width: 32rem; /* equivalent to max-w-lg */
            border-radius: 0.375rem; /* equivalent to rounded-md */
        }
        .secondary-image {
            width: 100%;
            max-width: 24rem; /* equivalent to max-w-sm */
            border-radius: 0.375rem; /* equivalent to rounded-md */
        }
    </style>

</head>
<body class="bg-bg400">
<div class="container">
    <div class="image-container">
        <img src="https://res.cloudinary.com/dt9d7lbhg/image/upload/v1723689172/500_gcp3yo.svg" alt="imagen de error" class="image">
    </div>
    <div>
        <img src="../static/img/Robot.svg" alt="robot descompuesto hecho a crochet" class="secondary-image">
    </div>
</div>
</body>
</html>

