SELECT DISTINCT firstname
FROM vk.users;

ALTER TABLE profiles ADD is_active BIT DEFAULT false NULL;

UPDATE profiles
SET is_active = 1
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35 AND gender = 'm';

SELECT COUNT(*), status
FROM friend_requests GROUP BY status;