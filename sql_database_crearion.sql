CREATE SCHEMA rent_car_db;
USE rent_car_db;

CREATE TABLE empleado(
   id_empleado INT AUTO_INCREMENT PRIMARY KEY,
   is_admin BOOLEAN NOT NULL DEFAULT 0,
   nombre VARCHAR(50) NOT NULL
   );
   
INSERT INTO empleado(is_admin, nombre) VALUES (false, "Kevin");

CREATE TABLE cliente(
   id_cliente INT AUTO_INCREMENT PRIMARY KEY,
   nombre VARCHAR(100) NOT NULL,
   direccion VARCHAR(50) NOT NULL,
   email VARCHAR(50) NOT NULL,
   telefono VARCHAR(50) NOT NULL,
   nickname VARCHAR(50) NOT NULL,
   password VARCHAR(50) NOT NULL
   );
   
CREATE TABLE vehiculo(
   id_vehiculo INT AUTO_INCREMENT,
   placa VARCHAR(10) NOT NULL,
   modelo INTEGER NOT NULL,
   marca VARCHAR(20) NOT NULL,
   color VARCHAR(15) NOT NULL,
   linea VARCHAR(20) NOT NULL,
   PRIMARY KEY(id_vehiculo)
   );
   
CREATE TABLE pqr(
   id_pqr INT AUTO_INCREMENT PRIMARY KEY,
   tipo VARCHAR(10) NOT NULL,
   comentario VARCHAR(300) NOT NULL,
   cliente_fk INTEGER NOT NULL,
   FOREIGN KEY(cliente_fk) REFERENCES cliente(id_cliente)
   );


CREATE TABLE reserva(
   id_reserva INT AUTO_INCREMENT PRIMARY KEY,
   estado VARCHAR(15) NOT NULL,
   fecha_inicio TIMESTAMP NOT NULL,
   fecha_fin TIMESTAMP NOT NULL,
   costo VARCHAR(15) NOT NULL,
   calificacion INTEGER NOT NULL,
   comentario VARCHAR(200),
   cliente_fk INTEGER NOT NULL,
   vehiculo_fk INTEGER NOT NULL,
   FOREIGN KEY(cliente_fk) REFERENCES cliente(id_cliente),
   FOREIGN KEY(vehiculo_fk) REFERENCES vehiculo(id_vehiculo)
   );
   

/* PARA INICIAR*/
\sql     /* Cambiarse a SQL*/
\c root@localhost;   /*Ingresar al usuario root*/
SHOW SCHEMAS;    /* Mostrar Bases de datos creadas*/
USE rent_car_db;   /*Usar BD con nombre rent_car_db*/
SHOW TABLES;    /* Mostrar Tablas creadas*/
DESCRIBE reserva;    /* Descripcion de Tabla reserva creada (Tipos de datos, atributos etc) */






