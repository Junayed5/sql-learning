-- Active: 1747622916822@@127.0.0.1@5432@ph
SELECT * FROM person2;

-- single row delete
DELETE FROM person2 WHERE user_name = 'Mobin';

-- add data
INSERT INTO person2 VALUES (8, 'Mobin', 23);

-- update column

ALTER TABLE person2
ADD COLUMN email VARCHAR(50) DEFAULT 'default@mail.com' NOT NULL;

-- column delete
ALTER TABLE person2 DROP COLUMN email;

-- column update
ALTER TABLE person2
        RENAME COLUMN age to user_age

ALTER Table person2
    ALTER COLUMN user_name TYPE VARCHAR(50);

-- add constrait
ALTER Table person2
    alter COLUMN user_age set NOT NULL;

ALTER Table person2
    ALTER COLUMN user_age DROP NOT NULL