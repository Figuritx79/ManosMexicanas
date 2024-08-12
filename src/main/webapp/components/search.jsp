<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/10/24
  Time: 6:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="nav__desplegable" id="searchDesplegable">
    <div class="nav__divSearch">
        <label for="search">
            <svg
                    width="15px"
                    height="60px"
                    viewBox="0 0 24 24"
                    fill="none"
                    style="display: inline"
                    xmlns="http://www.w3.org/2000/svg"
                    class="hidden lg:flex"
            >
                <path
                        d="M10 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z"
                        stroke="#30A380"
                        stroke-width="2"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
                <path
                        d="M19.9999 21L16.6499 16.65"
                        stroke="#30A380"
                        stroke-width="2"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
            </svg>
            <input type="search" name="search" id="search"
            class="nav__searchInput" autofocus placeholder="Buscar en la tienda">
        </label>
    </div>

    <div class="nav__divEnlaces">
        <h3 class="nav__divEnlaces__h3">Enlaces rapidos</h3>
        <ol class="nav__divEnlaces__ol">
            <li class="nav__divEnalces__li">->   Nosotros</li>
            <li class="nav__divEnalces__li">->   Categorias</li>
            <li class="nav__divEnalces__li">->   Redes Sociales</li>
        </ol>
    </div>
</div>
