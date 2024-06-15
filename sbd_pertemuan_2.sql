CREATE TABLE penjualan (
	idPenjualan int NOT NULL AUTO_INCREMENT,
	barangID int NOT NULL,
	quantity int,
	subtotal float,
	PRIMARY KEY (idPenjualan),
	FOREIGN KEY (barangID) REFERENCES barang(barangID)
);


insert into penjualan (barangID, quantity, subtotal)
values
(1, 3, 900000),
(2, 2, 500000),
(3, 2, 160000),
(3, 1, 300000);


select * from barang 


select barangName, barangStock from barang b 
order by barangStock desc

select count(*) from barang b 
where barangStock < 5


select count(*) from penjualan p 
where subtotal < 500000

select avg(p.subtotal) from penjualan p 
where subtotal < 500000

select * from penjualan p 
where subtotal < 500000

select * from penjualan p 


select barangID, sum(quantity), sum(subtotal) 
from penjualan p
group by barangID 
having sum(quantity) < 7


select * from penjualan p 
where p.barangID = 1

select barangID, sum(quantity) from penjualan p 

select * from barang
order by barangHarga desc
limit 3




