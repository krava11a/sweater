DELETE FROM message;

INSERT INTO message(id, text, tag, user_id) VALUES
(1,'first','tag',1),
(2,'first','my-tag',1),
(3,'first','tag',1),
(4,'first','my-tag',1);

ALTER SEQUENCE hibernate_sequence RESTART WITH 10;