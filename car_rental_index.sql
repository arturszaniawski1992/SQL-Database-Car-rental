-- 1 index
CREATE INDEX idx_customer
ON customer (name, surname);

-- 2 index
CREATE INDEX idx_town
ON rental (town);

-- 3 index
CREATE INDEX idx_car
ON car (brand, model);

