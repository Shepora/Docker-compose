CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  correo_electronico VARCHAR(100),
  telefono VARCHAR(20)
);

CREATE TABLE Reservas (
  id_reserva INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  fecha_reserva DATETIME,
  numero_personas INT,
  estado ENUM('pendiente', 'confirmada', 'cancelada'),
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Empleados (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  puesto VARCHAR(50),
  salario DECIMAL(10, 2)
);

CREATE TABLE Inventario (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(100),
  cantidad INT,
  precio DECIMAL(10, 2)
);

CREATE TABLE Ventas (
  id_venta INT AUTO_INCREMENT PRIMARY KEY,
  id_producto INT,
  fecha_venta DATETIME,
  cantidad INT,
  total DECIMAL(10, 2),
  FOREIGN KEY (id_producto) REFERENCES Inventario(id_producto)
);
