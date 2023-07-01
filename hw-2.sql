DROP TABLE IF EXISTS photo;
CREATE TABLE photo (
	id SERIAL,
    album_id BIGINT UNSIGNED NOT NULL,
	owner_id BIGINT UNSIGNED NOT NULL,
    width BIGINT UNSIGNED NOT NULL,
    height BIGINT UNSIGNED NOT NULL,
    size BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

CREATE TABLE geo(
  id SERIAL,
  type_geo VARCHAR(100),
  coordinate BIGINT,
  place BIGINT UNSIGNED NOT NULL,
  showmap BIGINT UNSIGNED NOT NULL 
  );


CREATE TABLE coordinates_geo(
  id_coordinates BIGINT UNSIGNED NOT NULL,
  latitude INT,
  longitude INT,
  
  FOREIGN KEY (id_coordinates) REFERENCES geo(id)
  );
  
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Reuben', 'Nienow', 'arlo50@example.org', '9374071116');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Frederik', 'Upton', 'terrence.cartwright@example.org', '9127498182');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Unique', 'Windler', 'rupert55@example.org', '9921090703');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Norene', 'West', 'rebekah29@example.net', '9592139196');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Victoria', 'Medhurst', 'sstehr@example.net', '9456642385');

INSERT INTO `likes` VALUES 
('1','1','1','1988-10-14 18:47:39'),
('2','2','1','1988-09-04 16:08:30'),
('3','3','1','1994-07-10 22:07:03'),
('4','4','1','1991-05-12 20:32:08'),
('5','5','2','1978-09-10 14:36:01'),
('6','6','2','1992-04-15 01:27:31'),
('7','7','2','2003-02-03 04:56:27'),
('8','8','8','2017-04-24 09:30:19'),
('9','9','9','1974-02-07 20:53:55'),
('10','10','10','1973-05-11 03:21:40'),
('11','11','11','2008-12-17 13:03:56'),
('12','12','12','1995-07-17 21:22:38'),
('13','13','13','1985-09-07 23:34:21'),
('14','14','14','1973-01-27 23:11:53')
; 

ALTER TABLE vk.profiles 
ADD COLUMN is_active BIT DEFAULT 1;

UPDATE profiles
SET is_active = 0
WHERE (birthday + INTERVAL 18 YEAR) > NOW();

select *
from profiles
where is_active = 0
order by birthday;

select *
from profiles
where is_active = 1
order by birthday;

ALTER TABLE messages 
ADD COLUMN is_deleted BIT DEFAULT 0;

UPDATE messages
SET created_at = now() + interval 1 year
limit 2;

UPDATE messages
SET is_deleted = 1
where created_at > NOW();

select *
from messages
order by created_at desc;


