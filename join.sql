SELECT * FROM "user";
SELECT * FROM post;

-- JOIN keyword
SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;