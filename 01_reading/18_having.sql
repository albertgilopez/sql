-- HAVING se utiliza para filtrar grupos después de que se han creado


SELECT * FROM users HAVING age > 20;

-- Es un limitante más fuerte que WHERE debido a que WHERE se ejecuta antes de agrupar 
SELECT age, COUNT(*) FROM users GROUP BY age HAVING COUNT(*) > 1;

