# Proyecto Laravel + React

Este proyecto está construido con **Laravel**, **Inertia.js** y **React**.

---

## 🚀 Requisitos previos

Asegúrate de tener instalados:

- PHP >= 8.2
- Composer
- Node.js & npm
- MySQL o PostgreSQL (según el caso)

---

## ⚡ Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/usuario/nombre-repo.git
   cd nombre-repo
   ```

2. Instala dependencias de Laravel:
   ```bash
   composer install
   ```

3. Instala dependencias de Node:
   ```bash
   npm install
   ```

4. Copia el archivo de entorno:
   ```bash
   cp .env.example .env
   ```

5. Genera la clave de aplicación:
   ```bash
   php artisan key:generate
   ```

6. Configura la base de datos en `.env` y luego ejecuta las migraciones:
   ```bash
   php artisan migrate
   ```

---

## ▶️ Ejecución del proyecto

1. Levanta el servidor de Laravel:
   ```bash
   php artisan serve
   ```

2. En otra terminal, inicia Vite para los assets de React:
   ```bash
   npm run dev
   ```

El proyecto estará disponible en:

- Laravel: `http://127.0.0.1:8000`
- Vite: `http://localhost:5173`

---

## 📂 Estructura del proyecto

- `app/` → Código backend (Laravel)
- `resources/js/` → Frontend en React
- `routes/` → Rutas de Laravel e Inertia
- `database/migrations/` → Migraciones de base de datos

---

## 🛠️ Comandos útiles

- Ejecutar migraciones:
  ```bash
  php artisan migrate
  ```

- Crear un nuevo modelo con migración:
  ```bash
  php artisan make:model Nombre -m
  ```

- Compilar assets para producción:
  ```bash
  npm run build
  ```

---
