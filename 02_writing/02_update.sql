UPDATE users SET age = 21 WHERE user_id = 3;

UPDATE users SET age = 21, init_date = NOW() WHERE user_id = 3;

UPDATE users SET age = 21, init_date = '2024-01-01' WHERE user_id = 3;