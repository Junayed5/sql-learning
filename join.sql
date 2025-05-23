SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post(id,title, user_id) VALUES(5, 'test for left join', NULL)

-- JOIN keyword
SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
JOIN "user" on post.user_id = "user".id;

-- LEFT JOIN
SELECT * FROM post
LEFT JOIN "user" on post.user_id = "user".id;
-- RIGHT JOIN
SELECT * FROM post
RIGHT JOIN "user" on post.user_id = "user".id;

-- FULL JOIN
SELECT * FROM post
FULL OUTER JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
JOIN "user" USING(id);

