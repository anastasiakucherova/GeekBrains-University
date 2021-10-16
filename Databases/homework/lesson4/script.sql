USE vk;

-- Таблица users
SELECT * FROM users LIMIT 10;
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Таблица profiles
SELECT * FROM profiles LIMIT 10;
ALTER TABLE profiles ADD COLUMN photo_id INT UNSIGNED AFTER country;

-- Таблица media_types
SELECT * FROM media_types;
TRUNCATE media_types;
INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;

-- Таблица media
SELECT * FROM media LIMIT 10;
UPDATE media SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);
CREATE TEMPORARY TABLE exts (name VARCHAR(10));
INSERT INTO exts VALUES ('jpeg'), ('avi'), ('mprg'), ('png');
UPDATE media SET filename = CONCAT('https://dropbox/vk/',
  filename,
  '.',
  (SELECT name FROM exts ORDER BY RAND() LIMIT 1)
);
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;
UPDATE media SET metadata = CONCAT(
  '{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}'
);
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Таблица friendship_statuses
SELECT * FROM friendship_statuses;
TRUNCATE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
  
-- Таблица friendship
SELECT * FROM friendship LIMIT 10;
UPDATE friendship SET status_id = FLOOR(1 + RAND() * 3);
UPDATE friendship SET confirmed_at = CURRENT_TIMESTAMP WHERE requested_at > confirmed_at;

-- Таблица messages
SELECT * FROM messages LIMIT 10;
ALTER TABLE messages MODIFY COLUMN community_id INT UNSIGNED;
ALTER TABLE messages MODIFY COLUMN to_user_id INT UNSIGNED;