CREATE TABLE animals (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  species VARCHAR(80) NOT NULL,
  status VARCHAR(30) NOT NULL DEFAULT 'available',
  description TEXT
);

CREATE TABLE adopters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  email VARCHAR(190) NOT NULL UNIQUE
);

CREATE TABLE adoption_requests (
  id INT AUTO_INCREMENT PRIMARY KEY,
  animal_id INT NOT NULL,
  adopter_id INT NOT NULL,
  status VARCHAR(30) NOT NULL DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (animal_id) REFERENCES animals(id),
  FOREIGN KEY (adopter_id) REFERENCES adopters(id)
);
