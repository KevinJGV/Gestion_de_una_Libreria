USE Libreria;

INSERT INTO Editoriales (Nombre) 
VALUES 
    ('Penguin Random House'),
    ('HarperCollins'),
    ('Planeta'),
    ('Alfaguara'),
    ('Simon & Schuster');

INSERT INTO Generos (Nombre) 
VALUES 
    ('Ficción'),
    ('No Ficción'),
    ('Ciencia Ficción'),
    ('Fantasía'),
    ('Historia'),
    ('Biografía');

INSERT INTO Autores (Nombre, Apellido) 
VALUES 
    ('Gabriel', 'García Márquez'),
    ('J.K.', 'Rowling'),
    ('Isaac', 'Asimov'),
    ('George', 'Orwell'),
    ('J.R.R.', 'Tolkien');

INSERT INTO Libros (Nombre, Stock) 
VALUES 
    ('Cien Años de Soledad', 50),
    ('Harry Potter y la Piedra Filosofal', 100),
    ('Fundación', 30),
    ('1984', 60),
    ('El Señor de los Anillos', 40);

INSERT INTO Clientes (Nombre, Apellido) 
VALUES 
    ('Carlos', 'Pérez'),
    ('María', 'López'),
    ('Juan', 'González'),
    ('Ana', 'Ramírez'),
    ('Luis', 'Martínez');

INSERT INTO Empleados (Nombre, Apellido) 
VALUES 
    ('Laura', 'Rodríguez'),
    ('Pedro', 'Hernández'),
    ('Sofía', 'García'),
    ('Miguel', 'Sánchez'),
    ('Carolina', 'Moreno');

INSERT INTO Ventas (ID_Cliente, ID_Empleado, Fecha, Valor_Total) 
VALUES 
    (1, 1, '2024-10-01', 150.50),
    (2, 2, '2024-10-02', 90.00),
    (3, 3, '2024-10-03', 120.75),
    (4, 4, '2024-10-04', 200.00),
    (5, 5, '2024-10-05', 250.25);

INSERT INTO Detalle_Ventas (ID_Libro, ID_Venta, Cantidad, Subtotal) 
VALUES 
    (1, 1, 2, 60.00),
    (2, 1, 1, 90.50),
    (3, 2, 3, 90.00),
    (4, 3, 1, 120.75),
    (5, 4, 2, 200.00),
    (2, 5, 5, 250.25);

INSERT INTO Libros_Editoriales (ID_Libro, ID_Editorial) 
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO Libros_Autores (ID_Libro, ID_Autor) 
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO Libros_Generos (ID_Libro, ID_Genero) 
VALUES 
    (1, 1), 
    (2, 4), 
    (3, 3), 
    (4, 1), 
    (5, 4);  
