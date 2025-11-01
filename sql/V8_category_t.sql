CREATE TABLE category_t (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL
);

INSERT INTO category_t
	(name)
	VALUES
	("seating"),
	("tables"),
	("storageFurniture"),
	("bedsBedroomFurniture"),
	("officeFurniture"),
	("floorLamps"),
	("rugsCarpets"),
	("vasesPlants"),
	("kitchen");

ALTER TABLE furniture_t 
	MODIFY category_id INT DEFAULT 1;

ALTER TABLE furniture_t
	ADD CONSTRAINT fk_furniture_category
	FOREIGN KEY (category_id) REFERENCES category_t (id);
	
