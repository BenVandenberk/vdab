create database if not exists MetIndexes;
use MetIndexes;

DROP TABLE IF EXISTS grotetabel;
CREATE TABLE grotetabel (
  a int unsigned not null auto_increment,
  b int unsigned not null,
  c int unsigned not null,
  primary key (a),
  key bKey (b)
);

drop procedure if exists TabelVullen;
delimiter #
create procedure TabelVullen()
begin
declare teller int default 1;
start transaction;
while teller <= 5000000 do
	insert into grotetabel(b, c) values(teller, teller);
    set teller = teller + 1;
end while;
commit;
end#
delimiter ;

call TabelVullen();
