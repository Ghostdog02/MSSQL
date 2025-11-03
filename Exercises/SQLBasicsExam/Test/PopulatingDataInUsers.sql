INSERT INTO Users (Username, Email, Age) 
VALUES
    ('Ivan', 'ivan@abv.bg', 23),
    ('Alex', 'alex@gmail.com', 18),
    ('Yordan', 'dani@gmail.com', 35),
    ('Anton', 'anton@abv.bg', 48),
    ('Sani', 'sani@gmail.com', 27);

SELECT AVG(Age) FROM Users;