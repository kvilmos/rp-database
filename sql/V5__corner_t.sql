CREATE TABLE corner_t (
	id CHAR(36) PRIMARY KEY DEFAULT UUID(),
	blueprint_id INT NOT NULL,
	x FLOAT NOT NULL,
	y FLOAT NOT NULL,
	FOREIGN KEY (blueprint_id) REFERENCES blueprint_t(id)
);
