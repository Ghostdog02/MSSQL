INSERT INTO Authors (FirstName, LastName, BirthDate) 
VALUES
    ('Ivan', 'Vazov', '1850-07-09'),
    ('Aleko', 'Konstantinov', '1863-01-01'),
    ('Elin', 'Pelin', '1877-07-08'),
    ('Peyo', 'Yavorov', '1878-01-13');

INSERT INTO Books (Title, PublicationYear, AuthorID)
VALUES
    ('Pod Igoto', 1899, 1),
    ('Bay Ganyo', 1895, 2),
    ('Yan Bibiyan', 1923, 3),
    ('Shadows', 1911, 4);
GO