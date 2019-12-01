Projeto lógico não normalizado, ponto de início do trabalho:

```
Biblioteca (CodBib PK, NomeBiblioteca)

Obra(CodObra PK, TituloObra, AnoObra, EditoraObra, CodBib)
CodBib referencia Biblioteca

Emprestimo(CodObra PK, CodUsu PK, DataVencimento PK, NomeUsu)
CodObra referencia Obra
```
