CREATE TABLE wall_t (
	id INT PRIMARY KEY AUTO_INCREMENT,
	blueprint_id INT NOT NULL,
	start_corner_id  CHAR(36) NOT NULL,
	end_corner_id CHAR(36)  NOT NULL,
	FOREIGN KEY (blueprint_id) REFERENCES blueprint_t(id) ON DELETE CASCADE,
	FOREIGN KEY (start_corner_id) REFERENCES corner_t(id)  ON DELETE CASCADE,
	FOREIGN KEY (end_corner_id) REFERENCES corner_t(id) ON DELETE CASCADE
);
