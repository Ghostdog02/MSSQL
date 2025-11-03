SELECT * FROM Users;

UPDATE Users
SET Username = 'ivan@softuni.bg'
WHERE Username = 'Ivan';

UPDATE Users
SET Age = 28
WHERE Username = 'Alex';

SELECT * FROM Users;