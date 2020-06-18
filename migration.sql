USE dadlister_db;

create database if not exists dadlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email    VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(240) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE


);

CREATE USER 'admin'@'DadLister_db' IDENTIFIED BY 'codeup';
GRANT ALL ON *.* TO 'admin'@'DadLister_db';

INSERT INTO users (username, email, password)
VALUES ('Admin', 'admin@gmail.com', 'codeup');
SELECT *
FROM users;

ALTER TABLE users
    ADD UNIQUE (username, email);

CREATE TABLE category
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads_category
(
    ads_id      INTEGER UNSIGNED NOT NULL,
    category_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);

INSERT INTO category (name)
VALUES ('help'),
       ('motor'),
       ('bbq'),
       ('wisdom'),
       ('sports'),
       ('tuff');


select * from ads_category where category_id = 1;

# need to use?
ALTER TABLE `ads_category`
    ADD CONSTRAINT `ads_category._ibfk_1` FOREIGN KEY (`ads_id`)
        REFERENCES `ads` (`id`);

# can be put in one method with 2 sql statements
delete from ads_category where ads_id = 5;

delete from ads where id = 5;

