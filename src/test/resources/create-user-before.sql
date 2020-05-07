DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr(id, active, password, username)
VALUES
       (1,true,'$2a$08$A7IuybBBRT3WAGUEASLoz.VKi8DKnFvevAChay6LSgtR5TU/tIaKC','admin'),
       (2,true,'$2a$08$A7IuybBBRT3WAGUEASLoz.VKi8DKnFvevAChay6LSgtR5TU/tIaKC','mike');

INSERT INTO user_role(user_id, roles) VALUES
(1,'USER'), (1,'ADMIN'),
(2,'USER');