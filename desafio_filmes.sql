--1
SELECT Nome, Ano FROM Filmes;

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

--9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10
SELECT Nome, Genero FROM Filmes F JOIN FilmesGenero FG ON F.id = FG.IdFilme JOIN Generos G ON G.id = FG.idGenero;

--11
SELECT Nome, Genero FROM Filmes F JOIN FilmesGenero FG ON F.id = FG.IdFilme JOIN Generos G ON G.id = FG.idGenero WHERE G.Genero = 'Mistério';

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes F JOIN ElencoFilme EF ON F.id = EF.IdFilme JOIN Atores A ON A.id = EF.idAtor;
