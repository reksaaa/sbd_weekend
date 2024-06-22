create TABLE movie(
idMovie CHAR(3) NOT NULL ,
title VARCHAR(200) NOT NULL,
category VARCHAR(50) NOT NULL,
PRIMARY KEY ( idMovie )
);


insert into movie (idMovie , title , category )
values
('A01','Kimi No Nawa', 'Animations'),
('A02', 'No Game No Life', 'Animations'),
('A03', 'Re-Zero', 'Animations'),
('B01', 'Human Centipede', 'Thriller'),
('B02', 'Saw', 'Thriller'),
('C01', 'Yesterday', 'Drama'),
('C02', 'The Notebook', 'Drama'),
('D01', 'Avatar', 'Scifi'),
('D02', 'The Mist', 'Scifi'),
('E01', 'Bodyguard', 'Action');

create TABLE user(
idUser INT NOT null AUTO_INCREMENT ,
firstName VARCHAR(100) NOT NULL,
lastName VARCHAR(100) NOT NULL,
idMovie CHAR(3) not null,
PRIMARY KEY ( idUser ),
foreign key (idMovie) references movie(idMovie)
);


insert into `user` (firstName, lastName, idMovie)
values 
('Bambang', 'Agus', 'D01'),
('Jajang', 'Nurjaman', 'B02'),
('Betty', 'Sukinem', 'A03'),
('Rinda', 'Melinda', 'C02'),
('Robert', 'Perela', 'A01'),
('Asep', 'Sukron', 'B01');

-- CROSS JOIN

select * from movie m cross join `user` u 
where u.firstName = 'Bambang'

-- INNER JOIN

select u.firstName, u.lastName, m.title , m.category 
from movie m inner join `user` u 
on m.idMovie = u.idMovie



-- ALTERNATIVE INNER JOIN
select u.firstName, u.lastName, m.title , m.category 
from movie m , `user` u 
where m.idMovie = u.idMovie and m.category = 'Animations'


-- LEFT JOIN

select m.title , m.category , u.firstName , u.lastName 
from movie m left join `user` u 
on m.idMovie = u.idMovie 
where firstName is null
order by m.title 


select m.title , m.category , u.firstName , u.lastName 
from `user` u left join movie m
on m.idMovie = u.idMovie 

-- RIGHT JOIN

select m.title , m.category , u.firstName , u.lastName 
from `user` u right join movie m
on m.idMovie = u.idMovie 
where u.firstName is null
order by m.title 


-- CREATE TABLE Theatre

create TABLE Teater(
idTeater INT NOT NULL AUTO_INCREMENT,
namaTeater VARCHAR(200) NOT NULL,
alamat VARCHAR(50) NOT NULL,
PRIMARY KEY ( idTeater )
);

insert into teater (namaTeater, alamat)
values 
('XXI Ciwalk', 'Jl Cipaganti'),
('CGV BEC', 'Jl Purnawarman'),
('XXI Trans Studio Mall', 'Jl Gatot Subroto');


-- INNER JOIN 3 TABLE

select u.firstName, u.lastName, m.title , m.category , t.namaTeater 
from 
movie m inner join `user` u 
on m.idMovie = u.idMovie
inner join teater t 
on u.idTeater = t.idTeater 

-- LEFT JOIN 3 TABLE

select m.title , m.category , u.firstName , u.lastName , t.namaTeater 
from 
movie m left join `user` u 
on m.idMovie = u.idMovie 
left join teater t 
on u.idTeater = t.idTeater 
where t.namaTeater is null

















