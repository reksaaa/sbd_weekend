create TABLE barang(
	barangID INT NOT NULL AUTO_INCREMENT,
	barangName VARCHAR(100) NOT NULL,
	barangHarga FLOAT(40) NOT NULL,
	barangStock INT NOT NULL,
	barangDesc VARCHAR(200),
	PRIMARY KEY ( barangID )
);
