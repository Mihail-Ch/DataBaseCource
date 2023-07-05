/*Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.
Подсчитать количество пользователей в каждом сообществе.
Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).
* Подсчитать общее количество лайков, которые получили пользователи младше 18 лет..
* Определить кто больше поставил лайков (всего): мужчины или женщины.*/

SELECT 
	CONCAT(firstname, ' ', lastname) AS owner,
	COUNT(*)
FROM users u
JOIN users_communities uc on u.id = uc.user_id
GROUP BY u.id
ORDER BY COUNT(*) DESC;


SELECT
	COUNT(*),
	communities.name
FROM users_communities 
JOIN communities ON users_communities.community_id = communities.id
GROUP BY communities.id;


SELECT 
	from_user_id
	, CONCAT(u.firstname, ' ', u.lastname) AS name
	, COUNT(*) AS 'messages count'
FROM messages m
JOIN users u ON u.id = m.from_user_id
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY count(*) desc
LIMIT 1;
