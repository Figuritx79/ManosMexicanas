<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %>
<%@ page import="jakarta.mail.Session" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);
    System.out.println(id);
    ProductDao productDao = new ProductDao();
    Producto producto = productDao.getOneById(id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script
            src="./static/js/tailwind.min.js">
    </script>
    <script src="./static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="./static/css/style.css">
    <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">
    <title><%= producto.getNombre()%></title>
    <link rel="stylesheet" href="./static/css/menu.css">
    <script src="./static/js/scrollHeader.js" defer></script>
</head>
<body class="  bg-b100 bg-bg100 text-stone-950 ">

<%@include file="./components/header.jsp" %>
<main>

    <section class="flex justify-center items-center py-16">
        <div class="w-full md:w-4/5 lg:w-3/4">
            <div class="flex flex-col lg:flex-row bg-base-90  rounded-lg overflow-hidden">
                <figure class="lg:w-1/2 w-full">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmPvx7M7bkjhkXXUh_uFzNM-L3zLVhB7mLzw&s" alt="Toy story" class="object-cover w-full h-full">
                </figure>
                <div class="p-8 lg:w-1/2 w-full">
                    <h1 class="text-3xl font-bold text-gray-600 text-4xl"><%=producto.getNombre() %></h1>
                    <p class="mt-4 text-2xl font-semibold text-gray-600">$<%=producto.getPrecio()%></p>
                    <p class="mt-2 text-gray-600"><%=producto.getDescripcion()%></p>
                    <div class="mt-4">
                        <button class="bg-[#30A380] text-white px-4 py-2 rounded-md focus:outline-none">Agregar al carrito</button>
                    </div>
                    <p class="mt-2 text-gray-600">Para cosas adicionales del producto</p>
                </div>
            </div>
        </div>
    </section>





    <section class="mt-16 ">
        <div>
            <h2 class="lg:text-3xl text-xl p-6">Productos Relacionados</h2>
        </div>
        <div class="container mx-auto ">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 p-4 border-2 border-bg100 rounded-lg">
                <div class="shadow-2xl card bg-[#FFFFFF] rounded-lg p-4 shadow-2xl">
                    <figure>
                        <img src="https://1.bp.blogspot.com/-S8Mbzln8bSU/XtDpVYQlcqI/AAAAAAAADVc/9P533rNP7O0R7ME9tVLJxtkdzydS4frAACPcBGAYYCw/s640/lanarhoades_20200529_86.png" alt="Producto 1" class="w-full h-48 object-cover rounded-lg">
                    </figure>
                    <div class="card-body mt-4">
                        <h2 class="card-title text-[#000000]">Producto 1</h2>
                        <p class="text-[#333333]">$10.00</p>
                        <button id="plus-btn4" class="btn text-white btn-hover relative mt-4 bg-[#30A380]">+</button>
                    </div>
                </div>

                <div class="shadow-2xl card bg-[#FFFFFF] rounded-lg p-4 shadow-2xl ">
                    <figure>
                        <img src="https://via.placeholder.com/150" alt="Producto 2" class="w-full h-48 object-cover rounded-lg">
                    </figure>
                    <div class="card-body mt-4">
                        <h2 class="card-title text-[#000000]">Producto 2</h2>
                        <p class="text-[#333333]">$20.00</p>
                        <button id="plus-btn3" class="btn text-white btn-hover relative mt-4 bg-[#30A380]">+</button>
                    </div>
                </div>

                <div class="shadow-2xl card bg-[#FFFFFF] rounded-lg p-4 shadow-2xl">
                    <figure>
                        <img src="https://via.placeholder.com/150" alt="Producto 3" class="w-full h-48 object-cover rounded-lg">
                    </figure>
                    <div class="card-body mt-4">
                        <h2 class="card-title text-[#000000]">Producto 3</h2>
                        <p class="text-[#333333]">$30.00</p>
                        <button id="plus-btn2" class="btn text-white btn-hover relative mt-4 bg-[#30A380]">+</button>
                    </div>
                </div>
                <div class="shadow-2xl card bg-[#FFFFFF] rounded-lg p-4 shadow-2xl">
                    <figure>
                        <img src="https://via.placeholder.com/150" alt="Producto 4" class="w-full h-48 object-cover rounded-lg">
                    </figure>
                    <div class="card-body mt-4">
                        <h2 class="card-title text-[#000000]">Producto 4</h2>
                        <p class="text-[#333333]">$40.00</p>
                        <button id="plus-btn" class="btn text-white btn-hover relative mt-4 bg-[#30A380]">+</button>
                    </div>
                </div>

            </div>
        </div>

        </div>
    </section>



</main>
<%@include file="components/footer.jsp"%>
</body>
</html>
