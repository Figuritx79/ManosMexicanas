# Manos Mexicanas

Este proyecto es ecommerce de peluches de crochet para nuestra integradora. Nuestro cliente es Erick Mireles.

> [!IMPORTANT]
> Usar el jdk 17, preferible que sea el jdk de Adoptium

### Estructura del proyecto

```bash
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── mx/
│   │   │       └── edu/
│   │   │           └── utez/
│   │   │               └── manosmexicanas/
│   │   │                   ├── controller/
│   │   │                   ├── dao/
│   │   │                   ├── model/
│   │   │                   └── utils/
│   │   ├── resources/
│   │   └── webapp/
│   │       ├── dashboard/
│   │       ├── Header/
│   │       ├── static/
│   │       │   ├── css/
│   │       │   ├── img/
│   │       │   └── js/
│   │       └── WEB-INF/
│   │           └── web.xml
├── pom.xml
├── README.md
└── .gitignore
```

### Descripcion de la estructura del proyecto

- Controller: En esta carpeta van los serverlets para manejar las peticiones

* Dao: En esta carpeta estan los data access object que nos permiten crear las consultas para nuestras tablas
* model: En esta carpeta van las tablas de la base de datos modelados en java **No falta nada o eso creo**
* Utils: En esta carpeta van las utilidades como la conexion a la base de datos, el gmail sender,etc
* Resources: En esta carpeta va las credenciales y la carpeta tokens para mandar los correos

### Dentro de webApp tenemos otras carpetas:

- static: Dentro de esta carpeta van los recursos estaticos como css,js,img,fonts,etc. **Consultar cualquier duda**

> [!NOTE]
> La carpeta HEADER HACE REFERENCIA A UN COMPONENTE REUTILIZBLE, FAVOR DE HACER LO MISMO SI HACEN OTROS COMPONENTES

> [!NOTE]
> La carpeta DASHBOARD es para el panel administrador, asi dividimos las vistas
