SELECT *,
    CASE 
        WHEN age < 18 THEN 'Menor de edad'
        WHEN age >= 18 AND age <= 65 THEN 'Adulto'
        ELSE 'Adulto mayor'
    END AS 'categoria_edad'
FROM users;