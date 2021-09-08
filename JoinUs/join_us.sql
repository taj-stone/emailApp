# DROP TABLE if exists users;

# CREATE TABLE users (
#     email VARCHAR(255) PRIMARY KEY,
#     created_at TIMESTAMP DEFAULT NOW()
# );

# INSERT INTO users(email) VALUES
# ('yolo@yahoo.com'), ('birdie@gmail.com');

# SELECT 
# CONCAT(
# 	MONTH(created_at), ' ',
# 	DAY(created_at), ' ',
# 	Year(created_at)) AS earliest_date
# FROM 
# 	users
# ORDER BY created_at LIMIT 1;

# SELECT DATE_FORMAT(MIN(created_at), "%M %D %Y") AS earliest_user 
# FROM users;

# SELECT 
# 	email,
# 	created_at
# FROM users
# ORDER BY created_at LIMIT 1;

# SELECT * 
# FROM
#     users
# WHERE created_at = (SELECT MIN(created_at) FROM users);

# SELECT 
# 	MONTH(created_at) AS month,
# 	COUNT(*) AS count
# FROM
# 	users
# GROUP BY month;

# SELECT 
#     DATE_FORMAT((created_at), "%M") AS month,
#     COUNT(*) AS count
# FROM 
#     users
# GROUP BY month
# ORDER BY count DESC;

# SELECT 
#     COUNT(*) AS yahoo_users
# FROM 
#     users
# WHERE email LIKE '%yahoo.com';

# SELECT 
#     CASE
#         WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
#         WHEN email LIKE '%@gmail.com' THEN 'gmail'
#         WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
#         ELSE 'other'
#     END AS provider,
#     COUNT(*) AS total_users
# FROM 
#     users
# GROUP BY provider
# ORDER BY total_users DESC;