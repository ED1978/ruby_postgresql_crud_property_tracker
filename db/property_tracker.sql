DROP TABLE IF EXISTS properties;

CREATE TABLE properties (
  id SERIAL4 PRIMARY KEY,
  address VARCHAR(255),
  value INT8,
  number_of_bedrooms INT2,
  year_built INT4,
  buy_let_status VARCHAR(255),
  square_footage INT4,
  build VARCHAR(255)
);
