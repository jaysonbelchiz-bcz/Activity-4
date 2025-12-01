-- Veterinary database setup by C1 Jayz
CREATE DATABASE veterinary; 

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);
CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
); 

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymenttime TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);


INSERT INTO owners(ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Jayson', 'Belchiz', 'Garcia', '09542567850', 'jayzbcz@gmail.com@gmail.com'),
(2, 'Shiey', 'Cortez', 'San Jose', '09171176543', 'shiellah@gmail.com'),
(3, 'Franchesca', 'Marasigan', 'Baguio', '09170922221', 'chescakulit81@gamil.com'),
(4, 'Mae', 'Bet', 'Manila', '09167534444', 'maebetuwu076@gmail.com'),
(5, 'Frances', 'Cute', 'Batangas', '09174445985', 'francesnism72@gmail.com'),
(6, 'Bin', 'Albin', 'Quezon', '09175507636', 'binbin009@gmail.com'),
(7, 'Christian', 'De Chavez', 'Kawit', '09176660177', 'chrstianmo069@gmail.com'),
(8, 'Hannah', 'Berte', 'Rosario', '09177778888', 'asawanibabu@gmail.com'),
(9, 'Mark', 'Berte', 'Garcia', '09178987419', 'babunism@gmail.com'),
(10,'John', 'Aquino', 'Davao', '09179906950', 'plottwist2025@gmail.com');

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Sparky', 'Dog', 'Shih tzsu', 2021-05-09, 'Male', 'Brown', 1),
(2, 'Lowie', 'Cat', 'Siberian', 2025-03-15, 'Male', 'White', 2),
(3, 'Kitty', 'Dog', 'Bulldog', 2022-06-06, 'Male', 'Brown', 3),
(4, 'Nemo', 'Fish', 'Tilapia', 2025-10-29, 'Female', 'Blue', 4),
(5, 'Hope', 'Hamster', 'Roborovski', 2024-07-24, 'Female', 'Gray', 5),
(6, 'Prada', 'Cat', 'Burmese', 2023-05-19, 'Female', 'Brown', 6),
(7, 'Sophie', 'Dog', 'Chihuahua', 2019-01-01, 'Female', 'White', 7),
(8, 'Babu', 'Cat', 'Siberian', 2019-10-11, 'Female', 'White', 8),
(9, 'Toni', 'Fish', 'Goldfish', 2024-12-25, 'Female', 'Gold', 9),
(10, 'Onyx', 'Dog', 'Shih Tzu', 2020-10-13, 'Male', 'Black', 10);