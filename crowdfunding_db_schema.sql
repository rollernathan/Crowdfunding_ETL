CREATE TABLE contacts (
	contact_id INTEGER NOT NULL,
	first_name VARCHAR(12) NOT NULL,
	last_name VARCHAR(13) NOT NULL,
	email VARCHAR(42) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE category (
	category_id VARCHAR(4) NOT NULL,
	category VARCHAR(15) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR(20) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(33) NOT NULL,
	description VARCHAR (53) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (10) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR (2) NOT NULL,
	currency VARCHAR (3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR (8) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
