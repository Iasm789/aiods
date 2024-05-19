-- Создание таблицы пользователей
CREATE TABLE user_table
(
    user_id   BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    username  VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    status    VARCHAR(255),
    firstname VARCHAR(255),
    lastname  VARCHAR(255),
    active    BOOLEAN      NOT NULL
);

-- Создание таблицы ролей пользователя
CREATE TABLE user_roles
(
    user_id BIGINT,
    roles   VARCHAR(255),
    CONSTRAINT fk_user_roles_user_id FOREIGN KEY (user_id) REFERENCES user_table (user_id)
);
