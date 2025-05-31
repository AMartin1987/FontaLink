const cargarProductos = () => {
    const xhr = new XMLHttpRequest();
    xhr.open("GET", "data/productos.xml", true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const xml = xhr.responseXML;
            const productos = xml.getElementsByTagName("producto");
            const contenedor = document.querySelector(".row.row-cols-1");

            for (let i = 0; i < productos.length; i++) {
                const producto = productos[i];
                const titulo = producto.getElementsByTagName("titulo")[0].textContent;
                const descripcion = producto.getElementsByTagName("descripcion")[0].textContent;
                const precio = producto.getElementsByTagName("precio")[0].textContent;
                const envio = producto.getElementsByTagName("envio")[0].textContent;
                const instalacion = producto.getElementsByTagName("instalacion")[0].textContent;

                const col = document.createElement("div");
                col.className = "col d-flex";

                col.innerHTML = `
                    <div class="card flex-fill h-100 shadow-sm border-0">
                        <h5 class="text-center mt-3 mb-0">${titulo}</h5>
                        <div class="card-body bg-white rounded p-3 d-flex flex-column">
                            <div class="mb-3" style="background-color:rgb(133, 145, 156); height: 150px; border-radius: 12px;"></div>
                            <p class="card-text text-muted">${descripcion}</p>
                            <hr class="my-2">
                            <p class="text-info mb-1">Envío: €${envio}</p>
                            <p class="text-info">Instalación: €${instalacion}</p>
                            <hr class="my-2">
                            <p class="text-center fw-bold mb-2" style="color: #6f42c1;">€${precio}</p>
                            <hr class="my-2">
                            <div class="text-center">
                                <button class="btn" style="background-color: #138d75; color: white;">
                                    <i class="bi bi-cart-plus-fill"></i> Añadir
                                </button>
                            </div>
                            <hr class="my-2">
                            <div style="height: 10px;"></div>
                        </div>
                    </div>
                `;

                contenedor.appendChild(col);
            }
        }
    };
    xhr.send();
};

document.addEventListener("DOMContentLoaded", cargarProductos);
