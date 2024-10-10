-- Cantidad total de libros vendidos por cada autor.
SELECT
    CONCAT(A.Nombre, ' ', A.Apellido) AS Autor,
    L.Nombre AS Libro,
    SUM(DV.Cantidad) AS Total_Vendidos
FROM
    Libros L
    JOIN Detalle_Ventas DV ON L.ID = DV.ID_Libro
    JOIN Libros_Autores LA ON L.ID = LA.ID_Libro
    JOIN Autores A ON LA.ID_Autor = A.ID
GROUP BY
    Autor,
    Libro;
DELIMITER //
CREATE PROCEDURE TotalLibrosVendidosxAutor (IN Order_set VARCHAR(10)) BEGIN
SELECT
    CONCAT (A.Nombre, ' ', A.Apellido) AS Autor,
    L.Nombre AS Libro,
    SUM(DV.Cantidad) AS Total_Vendidos
FROM
    Libros L
    JOIN Detalle_Ventas DV ON L.ID = DV.ID_Libro
    JOIN Libros_Autores LA ON L.ID = LA.ID_Libro
    JOIN Autores A ON LA.ID_Autor = A.ID
GROUP BY
    Autor,
    Libro
ORDER BY
    CASE
        WHEN LOWER(Order_set) = 'asc' THEN -Total_Vendidos
        ELSE Total_Vendidos
    END;
END //
-- Libros más vendidos en cada género.
SELECT 
    L.Nombre AS Libro,
    G.Nombre AS Genero,
    SUM(DV.Cantidad) AS Vendidos
FROM 
    Libros L
    JOIN Detalle_Ventas DV ON L.ID = DV.ID_Libro
    JOIN Libros_Generos LG ON L.ID = LG.ID_Libro
    JOIN Generos G ON LG.ID_Genero = G.ID
GROUP BY
    Genero, Libro
HAVING
    


-- Número de libros disponibles por editorial.
-- Cantidad de libros que se han agotado.
-- Libros que generaron más ingresos en el último mes.
-- Total de libros vendidos por cada empleado en la librería.
-- Cantidad de libros en cada género que están por agotarse (menos de 5 ejemplares).
-- Autores con más libros vendidos en el último trimestre.
-- Cantidad de libros vendidos por género y por día.
-- Editorial con mayor número de libros en el inventario.
DELIMITER;