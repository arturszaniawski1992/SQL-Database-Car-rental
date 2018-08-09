delimiter @
CREATE trigger set_min_cost  BEFORE INSERT ON hire
for each row
begin
if new.price < 100
then set new.price = 100;
end if;
end @min_cost_setter
delimiter ; 