CREATE TABLE furniture_t (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    user_id int NOT NULL,
    size_x FLOAT NOT NULL DEFAULT 1,
    size_y FLOAT NOT NULL DEFAULT 1,
    size_z FLOAT NOT NULL DEFAULT 1,
    category_id INT,
    file_name UUID NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user_t (id)
);