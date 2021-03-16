CREATE TABLE business (
  account_number INT PRIMARY KEY,
  legal_name TEXT,
  license_status VARCHAR(10) NOT NULL,
  doing_business_as_name TEXT
);

CREATE TABLE sidewalk (
  account_number INT PRIMARY KEY,
  legal_name TEXT,
  payment_date TIMESTAMP NOT NULL,
  doing_business_as_name TEXT
);

-- Query to check successful load
SELECT * FROM business;

SELECT * FROM sidewalk;

-- Join tables on county_id
SELECT * from business
INNER JOIN sidewalk
ON business.account_number = sidewalk.account_number;