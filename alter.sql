-- Active: 1747622916822@@127.0.0.1@5432@ph
SELECT * FROM person2;

-- single row delete
DELETE FROM person2 WHERE user_name = 'Hossain';

-- all row delete
TRUNCATE TABLE person2;

-- add data
INSERT INTO person2 VALUES (4, 'Shariatullah', 23), (5, 'Nesar', 24);

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

-- update constrait
ALTER Table person2
    alter COLUMN user_age set NOT NULL;

ALTER Table person2
    ALTER COLUMN user_age DROP NOT NULL;

-- update constraint
ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);
ALTER TABLE person2
    DROP constraint unique_person2_user_age UNIQUE(user_age);

