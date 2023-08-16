--Create a Culinary Store Database 

CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, colors TEXT, inventory INTEGER, price INTEGER); 

INSERT INTO store VALUES (1, "fish turner", "white, black, red", 26, 34.99);
INSERT INTO store VALUES (2, "rubber spatula", "white, black, red", 58, 8.00);
INSERT INTO store VALUES (3, "carbon steel pan", "black", 15, 120.95);
INSERT INTO store VALUES (4, "carbon steel wok", "black", 8, 195.95);
INSERT INTO store VALUES (5, "wood cutting board", "hickory, oak, black cherry", 33, 70.35); 
INSERT INTO store VALUES (6, "straight precision tongs", "steel", 27, 16.99);
INSERT INTO store VALUES (7, "apron", "red, navy, black, charcoal grey", 28, 38.50);
INSERT INTO store VALUES (8, "y shaped peeler", "black, red", 42, 7.00);
INSERT INTO store VALUES (9, "chinois", "steel", 17, 25.85);
INSERT INTO store VALUES (10, "bain marie", "steel", 11, 18.99); 
INSERT INTO store VALUES (11, "mandolin", "black, white", 23, 18.99);
INSERT INTO store VALUES (12, "scale", "black, white", 19, 40.00);
INSERT INTO store VALUES (13, "whisk", "steel", 28, 15.99);
INSERT INTO store VALUES (14, "knife set", "black, grey", 21, 245.95);
INSERT INTO store VALUES (15, "knife sharpener", "black", 8, 18.95);

-- Display the database ordered by prices ascending.
SELECT * FROM store ORDER BY price ASC;

-- Display items sold in the store where the price is less than $30.
SELECT * FROM store WHERE price < 30; 

-- What is the most expensive item sold?
SELECT MAX (price) FROM store; 

-- What 5 items have the least amount in stock / inventory?;
SELECT * FROM store ORDER BY inventory ASC limit 5; 
