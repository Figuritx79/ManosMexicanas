<%@ page import="java.nio.file.Path" %> <%@ page import="java.nio.file.Paths" %>
<%@ page import="java.nio.file.Files" %><%-- Created by IntelliJ IDEA. User:
Figuritx79 Date: 6/13/24 Time: 6:17 PM To change this template use File |
Settings | File Templates. --%> <%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>

<header
  class="flex shadow-md bg-bg100 lg:justify-center lg:items-center md:shadow-md lg:shadow-mdi relative"
>
  <div class="flex justify-start basis-1/2 lg:basis-1/2">
    <img src="static/img/Logo.svg" alt="Logo" class="w-16" />
  </div>

  <div
    class="hidden md:basis-1/2 md:gap-x-6 lg:basis-1/2 lg:gap-x-6 md:flex lg:flex md:hidden"
  >
    <div class="text-extra">
      <a href="">Inicio</a>
      <a href="">Productos</a>
      <a href="">Categorias</a>
    </div>
  </div>

  <nav
    class="flex items-center justify-end basis-1/2 gap-x-6 lg:basis-1/4 lg:gap-x-10 text-primary mr-4 lg:mr-6 relative"
  >
    <a id="buscar" href="#">
      <svg
        width="15px"
        height="44px"
        viewBox="0 0 24 24"
        fill="none"
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
      <svg
        width="17px"
        height="48px"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="lg:hidden"
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
    </a>



    <a id="bolsa" href="#">
      <svg
        width="15px"
        height="44px"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="hidden lg:flex"
      >
        <path
          d="M6 2L3 6V20C3 20.5304 3.21071 21.0391 3.58579 21.4142C3.96086 21.7893 4.46957 22 5 22H19C19.5304 22 20.0391 21.7893 20.4142 21.4142C20.7893 21.0391 21 20.5304 21 20V6L18 2H6Z"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M3 6H21"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M16 10C16 11.0609 15.5786 12.0783 14.8284 12.8284C14.0783 13.5786 13.0609 14 12 14C10.9391 14 9.92172 13.5786 9.17157 12.8284C8.42143 12.0783 8 11.0609 8 10"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
      </svg>
      <svg
        width="17px"
        height="48"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="lg:hidden"
      >
        <path
          d="M6 2L3 6V20C3 20.5304 3.21071 21.0391 3.58579 21.4142C3.96086 21.7893 4.46957 22 5 22H19C19.5304 22 20.0391 21.7893 20.4142 21.4142C20.7893 21.0391 21 20.5304 21 20V6L18 2H6Z"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M3 6H21"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M16 10C16 11.0609 15.5786 12.0783 14.8284 12.8284C14.0783 13.5786 13.0609 14 12 14C10.9391 14 9.92172 13.5786 9.17157 12.8284C8.42143 12.0783 8 11.0609 8 10"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
      </svg>
    </a>



    <label for="menu" class="lg:hidden nav__label" id="hamburger">
      <svg
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M21 6H3"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M21 12H9"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <path
          d="M21 18H7"
          stroke="#30A380"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
      </svg>
    </label>
    <input type="checkbox" name="check" id="menu" class="nav__input" />
    <div class="nav_menu lg:hidden">
      <a href="" class="nav__item">Animado</a>
      <a href="" class="nav__item">Comida</a>
      <a href="" class="nav__item">Artistas</a>
      <a href="" class="nav__item">Nosotros</a>
    </div>
  </nav>
</header>
