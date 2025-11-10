CREATE TABLE item_t (
	id INT PRIMARY KEY AUTO_INCREMENT,
	blueprint_id INT NOT NULL,
	furniture_id INT NOT NULL,
	pos_x FLOAT DEFAULT 0,
	pos_y FLOAT DEFAULT 0,
	pos_z FLOAT DEFAULT 0,
	rot FLOAT DEFAULT 0,
	FOREIGN KEY (blueprint_id) REFERENCES blueprint_t(id) ON DELETE CASCADE,
	FOREIGN KEY (furniture_id) REFERENCES furniture_t(id) ON DELETE CASCADE
);
