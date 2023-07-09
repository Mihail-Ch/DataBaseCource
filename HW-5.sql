/*Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]
Выведите данные, используя написанное представление [SELECT]
Удалите представление [DROP VIEW]
 */
 
SELECT 
	COUNT(*) AS cnt,
	u.id
FROM users AS u
JOIN friend_requests AS fr ON (
	u.id = fr.target_user_id OR u.id = fr.initiator_user_id 
)
WHERE fr.status = 'approved'
GROUP BY u.id
ORDER BY cnt DESC;

CREATE OR REPLACE VIEW friends_amount AS 
SELECT 
	COUNT(*) AS cnt,
	u.id
FROM users AS u
JOIN friend_requests AS fr ON (
	u.id = fr.target_user_id OR u.id = fr.initiator_user_id 
)
WHERE fr.status = 'approved'
GROUP BY u.id
ORDER BY cnt DESC;


SELECT * FROM friends_amount;

DROP VIEW friends_amount;