-- Excluir todas as reservas que vencem em 20/12/2007 do usuário João Nascimento
DELETE FROM
    Emprestimo
WHERE
    DataVencimento = '2007-12-20'
    and CodUsu = (
        SELECT
            CodUsu
        FROM
            Usuario
        WHERE
            NomeUsu = 'João Nascimento'
    );

-- Listar o nome do usuário e o título da obra dos empréstimos de cada usuário
SELECT
    NomeUsu, TituloObra
FROM
    Usuario
INNER JOIN
    Emprestimo ON Usuario.CodUsu = Emprestimo.CodUsu
INNER JOIN
    Obra ON Emprestimo.CodObra = Obra.CodObra;

-- Exibir obras de 2004 que possuem reserva
SELECT DISTINCT
    TituloObra
FROM
    Obra
INNER JOIN
    Emprestimo ON Obra.CodObra = Emprestimo.CodObra
WHERE
    Obra.AnoObra = 2004;

-- Exibir o nome da biblioteca e o número total de obras se o número total de obras for maior que 1000 obras
SELECT
    NomeBiblioteca, COUNT(Obra.CodObra) AS NumObras
FROM
    Biblioteca
LEFT OUTER JOIN
    Obra ON Biblioteca.CodBib = Obra.CodBib
GROUP BY
    NomeBiblioteca
HAVING
    COUNT(Obra.CodObra) > 1000;

-- Nomes dos usuários que não estão com empréstimos
SELECT
    NomeUsu
FROM
    Usuario
WHERE
    Usuario.CodUsu NOT IN (
        SELECT
            InnerUsuario.CodUsu
        FROM
            Usuario as InnerUsuario
        INNER JOIN
            Emprestimo on InnerUsuario.CodUsu = Emprestimo.CodUsu
    );

