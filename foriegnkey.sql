CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE SET DEFAULT DEFAULT 2
);

ALTER Table post    
    ALTER COLUMN user_id set NOT NULL

INSERT INTO "user" (username) VALUES 
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi')

INSERT INTO post(title, user_id) VALUES
('Enjoying a sunny day with Akash', 2),
('Batash just shared an amazing recipe', 1),
('Exploring advantages with sagor', 4),
('Nodi''wisdom always leaves me inspired', 4)


SELECT * FROM "user";
SELECT * FROM post;

-- DELETE TABLE
DROP Table post;
DROP Table "user";

-- Insertion constraints on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID


-- DELETE
-- Deletion constraints with DELETE user
-- Restrict deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (DEFAULT)
-- Cascading deletion -> ON DELETE CASCADE
-- Setting Null -> ON DELETE SET NULL
-- Set default value -> ON DELETE SET DEFAULT

DELETE FROM "user"
 WHERE id = 4;




