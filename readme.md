# Proyecto: FONTALINK

## Descripción general

Este proyecto consiste en el diseño de una aplicación web para una empresa dedicada a la venta de productos de fontanería, así como a la prestación de servicios de instalación y reparación. La web está estructurada para atender a los clientes, permitir a los fontaneros gestionar sus servicios, y brindar a los administradores el control general del sistema. El diseño contempla la navegación, las pantallas principales y las interfaces de entrada de datos, en coherencia con los diagramas entregados previamente (E/R, casos de uso, clases, etc.).

---

## Estructura del proyecto
```
FONTALINK/
│
├── css/
│ └── styles.css
│
├── data/
│ └── productos.xml
│
├── js/
│ └── productos.js
│
├── index.html
├── inicioSesion.html
├── miCesta.html
├── miCuentaAdministrador.html
├── miCuentaCliente.html
├── miCuentaFontanero.html
└── registro.html
```

---

## Navegación principal

Estas páginas están accesibles desde el menú o flujo normal de navegación:

- `index.html`: Página principal
- `registro.html`: Registro de usuario
- `inicioSesion.html`: Inicio de sesión
- `miCesta.html`: Cesta de compras del cliente

---

## Páginas internas (acceso directo para evaluación)

Las siguientes páginas no están enlazadas desde la navegación principal, pero forman parte fundamental de la aplicación. Se accede a ellas directamente con los enlaces:

- [`miCuentaAdministrador.html`](miCuentaAdministrador.html): Panel de control del administrador.
- [`miCuentaCliente.html`](miCuentaCliente.html): Panel del cliente registrado.
- [`miCuentaFontanero.html`](miCuentaFontanero.html): Panel del técnico fontanero.

---

## Referencias de recursos

Todos los recursos (CSS, JS, XML) están referenciados mediante **rutas relativas**, por lo tanto:

✅ La visualización funciona tanto **en versión online** como **en versión local**.  
✅ Los estilos y scripts están correctamente enlazados.

---

## Entrega

- 🌐 Versión online subida: [*[https://github.com/AMartin1987/FontaLink](https://github.com/AMartin1987/FontaLink)*]
- 📦 Versión local: ver archivo ZIP adjunto con esta estructura de proyecto.

---

## Autora

Alejandra Martín  
1º DAM Semipresencial – Curso 2024/2025  
