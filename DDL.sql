DROP DATABASE IF EXISTS Libreria;

CREATE DATABASE IF NOT EXISTS Libreria;

USE Libreria;

CREATE TABLE
    Editoriales (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE
    Generos (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE
    Autores (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL,
        Apellido VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Libros (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL UNIQUE,
        Stock INT NOT NULL
    );

CREATE TABLE
    Clientes (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL,
        Apellido VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Empleados (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(100) NOT NULL,
        Apellido VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Ventas (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        ID_Cliente INT,
        ID_Empleado INT,
        Fecha DATE NOT NULL,
        Valor_Total FLOAT NOT NULL,
        FOREIGN KEY (ID_Cliente) REFERENCES Clientes (ID),
        FOREIGN KEY (ID_Empleado) REFERENCES Empleados (ID)
    );

CREATE TABLE
    Detalle_Ventas (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        ID_Libro INT,
        ID_Venta INT,
        Cantidad INT NOT NULL,
        Subtotal FLOAT NOT NULL,
        FOREIGN KEY (ID_Libro) REFERENCES Libros (ID),
        FOREIGN KEY (ID_Venta) REFERENCES Ventas (ID)
    );

CREATE TABLE
    Libros_Editoriales (
        ID_Libro INT,
        ID_Editorial INT,
        FOREIGN KEY (ID_Libro) REFERENCES Libros (ID),
        FOREIGN KEY (ID_Editorial) REFERENCES Editoriales (ID)
    );

CREATE TABLE
    Libros_Autores (
        ID_Libro INT,
        ID_Autor INT,
        FOREIGN KEY (ID_Libro) REFERENCES Libros (ID),
        FOREIGN KEY (ID_Autor) REFERENCES Autores (ID)
    );

CREATE TABLE
    Libros_Generos (
        ID_Libro INT,
        ID_Genero INT,
        FOREIGN KEY (ID_Libro) REFERENCES Libros (ID),
        FOREIGN KEY (ID_Genero) REFERENCES Generos (ID)
    )