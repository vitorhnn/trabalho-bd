Remoção da dependência funcional entre CodUsu e NomeUsu em Emprestimo

```
Biblioteca (CodBib PK, NomeBiblioteca)

Obra(CodObra PK, TituloObra, AnoObra, EditoraObra, CodBib)
CodBib referencia Biblioteca

Usuario(CodUsu PK, NomeUsu)

Emprestimo(CodObra PK, CodUsu PK, DataVencimento PK)
CodObra referencia Obra
CodUsu referencia Usuario
```
