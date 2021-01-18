CREATE TABLE hotels (
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
location VARCHAR(50) NOT NULL,
price_range INT NOT NULL check(price_range BETWEEN 1 and 5)
);


CREATE TABLE reviews(
id BIGSERIAL NOT NULL PRIMARY KEY,
hotel_id BIGINT NOT NULL REFERENCES hotels(id), 
name VARCHAR(50) NOT NULL,review TEXT NOT NULL,
rating INT NOT NULL check(rating between 1 and 5)
);








