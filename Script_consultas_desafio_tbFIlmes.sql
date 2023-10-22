user FILMES

/*1*/
SELECT Nome,Ano FROM  Filmes

/*2*/
SELECT Nome,Ano,Duracao FROM  Filmes ORDER BY Ano ASC

/*3*/
SELECT Nome,Ano,Duracao FROM  Filmes  WHERE Nome ='De Volta para o Futuro'

/*4*/
SELECT Nome,Ano,Duracao FROM  Filmes  WHERE Ano =1997

/*5*/
SELECT Nome,Ano,Duracao FROM  Filmes  WHERE Ano >2000

/*6*/
SELECT Nome,Ano,Duracao FROM  Filmes  WHERE Duracao >100 and Duracao < 150 ORDER BY Duracao

/*7*/
SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade Desc

/*8*/
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero= 'M'

/*9*/
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero= 'F' ORDER BY PrimeiroNome

/*10*/
SELECT Filmes.Nome,Generos.Genero FROM FilmesGenero
INNER JOIN FILMES ON FILMES.ID =FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.ID =FilmesGenero.IdGenero

/*11*/
SELECT Filmes.Nome,Generos.Genero FROM FilmesGenero
INNER JOIN FILMES ON FILMES.ID =FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.ID =FilmesGenero.IdGenero
WHERE Genero ='Mistério'

/*12*/
SELECT FILMES.Nome,ATORES.PrimeiroNome,ATORES.UltimoNome,ElencoFilme.Papel FROM ElencoFilme
INNER JOIN FILMES on FILMES.ID =ElencoFilme.IdFilme
INNER JOIN ATORES on ATORES.ID =ElencoFilme.IdAtor

