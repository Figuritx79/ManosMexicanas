<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/18/24
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exito</title>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/Jira.png" type="image/x-icon">
</head>
<body>
<div class="flex min-h-[100dvh] flex-col items-center justify-center bg-background px-4 py-12 sm:px-6 lg:px-8">
    <div class="mx-auto max-w-md text-center">
        <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="mx-auto h-12 w-12 text-green-500"
        >
            <circle cx="12" cy="12" r="10"></circle>
            <path d="m9 12 2 2 4-4"></path>
        </svg>
        <h1 class="mt-4 text-3xl font-bold tracking-tight text-foreground sm:text-4xl">¡Gracias por tu compra!</h1>
        <p class="mt-4 text-muted-foreground">
            Tu pedido ha sido procesado con éxito. Pronto recibirás más información sobre el envío.
        </p>
        <div class="mt-6">
            <a
                    class="inline-flex items-center rounded-md bg-slate-950 px-4 py-2 text-sm font-medium text-bg100 shadow-sm transition-colors hover:bg-primary/90 focus:outline-none focus:ring-2 focus:ring-primary focus:ring-offset-2"
                    href="<%=request.getContextPath()%>/index.jsp"
                    rel="ugc"
            >
                Volver a la página principal
            </a>
        </div>
    </div>
</div>
</body>
</html>
