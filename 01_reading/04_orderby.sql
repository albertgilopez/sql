SELECT DISTINCT *
FROM users
WHERE age >= 18
ORDER BY age DESC;

SELECT DISTINCT *
FROM users
WHERE email = 'albert@albertgilopez.es'
ORDER BY age DESC LIMIT 10;
