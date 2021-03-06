CREATE DATABASE mars_db;
USE mars_db;

-- DON'T ENTER INTO DATABASE: JUST A VISUAL
-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255),
--     last_name VARCHAR(255),
--     username VARCHAR(255),
--     password VARCHAR(255),
--     job_title VARCHAR(255),
--     createdAt TIMESTAMP DEFAULT NOW()
-- );


CREATE TABLE todo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255),
    user_id INT,
    completed BOOLEAN DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE chat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255),
    user_id INT,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
-- >>>>>>> e8e5d9591e8652bb066857276dcd537c768e9cdc
