create TABLE barang(
	barangID INT NOT NULL AUTO_INCREMENT,
	barangName VARCHAR(100) NOT NULL,
	barangHarga FLOAT(40) NOT NULL,
	barangStock INT NOT NULL,
	barangDesc VARCHAR(200),
	PRIMARY KEY ( barangID )
);

drop table barang;

insert into barang 
(barangName, barangHarga, barangStock, barangDesc)
values
("Kaos", 300000, 2, "Kaos Lengan Panjang");
-- ("Kemeja", 250000, 2, "Kemeja kain"),
-- ("Topi", 80000, 20, "Topi NB"),
-- ("Sepatu", 300000, 3, "Sepatu compass"),
-- ("Kaos Kaki", "20000", 50, "Kaos kaki pria");


select * from barang

select barangName , barangHarga , barangDesc from barang

select b.barangName , b.barangHarga  from barang b
where barangName = "Kaos"

update barang set barangName = "Topi Rapper"
where barangStock = 20



