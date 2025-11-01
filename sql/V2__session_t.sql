CREATE TABLE session_t (
	id VARCHAR(255) PRIMARY KEY NOT NULL,
	user_email VARCHAR(255) NOT NULL,
	refresh_token VARCHAR(512) NOT NULL,
	is_revoked BOOL NOT NULL DEFAULT false,
	create_at datetime DEFAULT (now()),
	expires_at datetime 
);