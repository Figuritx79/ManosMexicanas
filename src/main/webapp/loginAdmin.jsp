<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/18/24
  Time: 11:57 AM
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
    <title>Admin Login </title>
    <script src="static/js/tailwind.min.js"></script>
    <script src="static/js/tailwind.config.js"></script>
</head>
<body>
<main class="lg:grid lg:grid-cols-2 lg:h-full">
    <section class="lg:flex lg:justify-center lg:items-center mt-52">
        <div class=" lg:flex-col lg:justify-start ml-10 lg:w-72 lg:h-72">
            <img src="static/img/Jira.png" alt="Logo" class="lg:w-72 lg:w-72  lg:border-2 lg:border-primary lg:rounded-full lg:border-dashed">
        </div>
    </section>

    <section class="lg:flex lg:justify-center lg:items-center">
        <div>
            <img src="static/img/admin.svg" alt="admin">
        </div>
        <div>
            <form action="" method="post">
                <div>
                    <h1 class="lg:text-3xl">Admin Login</h1>
                    <div>
                        <p>Ingresa tus crendenciales para acceder al panel del admin</p>
                    </div>
                </div>
                <div>
                    <label for="email">
                        <input type="email" name="email" id="email">
                    </label>
                </div>
                <div>
                    <label for="password">
                        <input type="password" name="pass" id="password">
                    </label>
                </div>
                <div>
                    <div>
                        <button></button>
                    </div>
                    <div>
                        <button></button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</main>
</body>