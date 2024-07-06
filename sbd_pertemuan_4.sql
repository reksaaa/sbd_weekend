

select u.firstName , u.lastName , m.title , m.category , t.namaTeater 
from 
`user` u left join movie m 
on u.idMovie = m.idMovie 
left join teater t 
on u.idTeater = t.idTeater 
where t.namaTeater = 'CGV BEC'
order by firstName

select * from `user` u 

select * from movie m 

create view vReportMovie AS
select u.firstName , u.lastName , m.title , m.category , t.namaTeater 
from 
`user` u left join movie m 
on u.idMovie = m.idMovie 
left join teater t 
on u.idTeater = t.idTeater 


select * from vreportmovie v 

CREATE TRIGGER log_user_insert AFTER INSERT ON `user`
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName, new_idMovie, new_idTeater, `action`, actionAt)
  VALUES (NEW.firstName, NEW.lastName,new.idMovie, new.idTeater, 'Create Data', NOW());
end

CREATE TRIGGER log_user_update AFTER UPDATE ON `user`
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName, new_idMovie, new_idTeater, `action`, actionAt)
  VALUES (NEW.firstName, NEW.lastName,new.idMovie, new.idTeater, 'Update Data', NOW());
end

CREATE TRIGGER log_user_delete AFTER DELETE ON `user`
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName, new_idMovie, new_idTeater, `action`, actionAt)
  VALUES (OLD.firstName, OLD.lastName, OLD.idMovie, OLD.idTeater, 'Delete Data', NOW());
end


insert into `user` (firstName, lastName, idMovie, idTeater)
values
('Toni', 'Kross', 'D01', 2)


update `user` set idMovie = 'E01'
where idUser = 16

delete from `user` where idUser = 16

select * from `user` u 


select * from log_user lu 

create or replace procedure InsertUser(
	in p_firstname VARCHAR(100),
	in p_lastname VARCHAR(100),
	in p_idmovie CHAR(3),
	in p_idteater int
)
begin 
	insert into `user` (firstName, lastName, idMovie, idTeater)
	values(p_firstname, p_lastname, p_idmovie, p_idteater);
end;


CREATE OR REPLACE PROCEDURE UpdateUser(
    IN p_firstname VARCHAR(100),
    IN p_lastname VARCHAR(100),
    IN p_iduser INT
)
BEGIN 
    UPDATE `user` 
    SET firstName = p_firstname, lastName = p_lastname
    WHERE idUser = p_iduser;
END;


CREATE OR REPLACE PROCEDURE DeleteUser(
    IN p_iduser INT
)
BEGIN 
    DELETE FROM `user` 
    WHERE idUser = p_iduser;
END;



call UpdateUser ("Diogo", "Costa", 17)

call DeleteUser (17)



















































