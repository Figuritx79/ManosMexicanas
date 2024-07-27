document.addEventListener("DOMContentLoaded", function() {
    // Inicializar DataTables
    var dataTable = $('#example').DataTable({
        paging: true,
        searching: true,
        ordering: true,
        info: true,
        language: {
            url: '../static/js/es-MX.json' // Traducción al español
        }
    });

    const navLinks = document.querySelectorAll(".nav-pills .nav-link");

    navLinks.forEach(link => {
        link.addEventListener("click", function(event) {
            event.preventDefault();

            navLinks.forEach(nav => nav.classList.remove("active"));

            this.classList.add("active");

            const filter = this.getAttribute("data-filter");

            dataTable.column(5).search(function(value, index) {
                if (filter === "Todo") return true;
                if (filter === "Habilitado") return value === "Habilitado";
                if (filter === "Deshabilitado") return value === "Deshabilitado";
                return false;
            }, true, false).draw();
        });
    });
});