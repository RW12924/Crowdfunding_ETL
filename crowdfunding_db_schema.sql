CREATE TABLE category_table (
    category_id VARCHAR(30) PRIMARY KEY,
    category VARCHAR(30)
);
CREATE TABLE subcategory_table (
    subcategory_id VARCHAR(30) PRIMARY KEY,
    subcategory VARCHAR(30)
);
CREATE TABLE contact_table (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(50)
);

CREATE TABLE campaign_table (
    cf_id VARCHAR(30) PRIMARY KEY,
    contact_id INT,
	company_name VARCHAR,
    description VARCHAR,
    goal NUMERIC(10,2),
    pledged NUMERIC(10,2),
    outcome VARCHAR(30),
    backers_count INT,
    country VARCHAR(30),
    currency VARCHAR(30),
    launched_date DATE,
    end_date DATE,
	category_id VARCHAR(30),
	subcategory_id VARCHAR(30),
	FOREIGN KEY (contact_id) REFERENCES contact_table(contact_id),
    FOREIGN KEY (category_id) REFERENCES category_table(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory_table(subcategory_id)
);