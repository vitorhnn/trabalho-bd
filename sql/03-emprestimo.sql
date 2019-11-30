CREATE TABLE Emprestimo(
    CodObra INTEGER NOT NULL,
    CodUsu INTEGER NOT NULL,
    DataVencimento DATE NOT NULL,

    PRIMARY KEY(CodObra, CodUsu, DataVencimento),
    FOREIGN KEY(CodObra) REFERENCES Obra(CodObra),
    FOREIGN KEY(CodUsu) REFERENCES Usuario(CodUsu)
);
