SELECT age, COUNT(*) FROM users GROUP BY age;
SELECT MAX(age) FROM users GROUP BY age;
-- Esta consulta cuenta cuántos usuarios hay para cada edad
-- GROUP BY age agrupa los registros por edad
-- COUNT(age) cuenta cuántos registros hay en cada grupo
SELECT COUNT(age) FROM users GROUP BY age;
