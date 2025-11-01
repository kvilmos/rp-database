CREATE TABLE wall_t (
	id INT PRIMARY KEY AUTO_INCREMENT,
	start_corner_id  CHAR(36) NOT NULL,
	end_corner_id CHAR(36)  NOT NULL,
	FOREIGN KEY (start_corner_id) REFERENCES corner_t(id),
	FOREIGN KEY (end_corner_id) REFERENCES corner_t(id)
);
