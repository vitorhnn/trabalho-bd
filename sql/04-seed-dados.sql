INSERT INTO Biblioteca (NomeBiblioteca) VALUES ('Biblioteca do IM'), ('Biblioteca de Seropédica'), ('Biblioteca do CT');

INSERT INTO Usuario (NomeUsu) VALUES ('João Nascimento'), ('Victor Chiletto'), ('Maria Silva');

INSERT INTO Obra (TituloObra, AnoObra, EditoraObra, CodBib) VALUES ('The C Programming Language, 2nd edition', 1988, 'Prentice Hall', 1), ('The C Programming Language, 2nd edition', 1988, 'Prentice Hall', 3), ('Um livro aleatório de 2004', 2004, 'Editora Aleatória', 2);

INSERT INTO Emprestimo (CodObra, CodUsu, DataVencimento) VALUES (2, 1, '2007-12-20'), (1, 2, '2019-06-08'), (3, 2, '2019-12-06');

