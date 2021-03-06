/* 1 */
--SELECT
--Name
--FROM Genre;

/* 2 */
--SELECT
--ArtistName,
--YearEstablished
--FROM Artist
--ORDER BY ArtistName

/* 3 */
--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;

/* 4 */
--SELECT DISTINCT a.ArtistName
--FROM Artist a
--    LEFT JOIN Album al on al.ArtistId = a.Id
--    LEFT JOIN Genre g on al.GenreId = g.id
--WHERE g.Name = 'Soul'

/* 5 */
--SELECT DISTINCT a.ArtistName
--FROM Artist a
--    LEFT JOIN Album al on al.ArtistId = a.Id
--    LEFT JOIN Genre g on g.id = al.GenreId
--WHERE g.Name = 'Jazz' OR g.Name = 'Rock'

/* 6 */
--SELECT al.Title
--FROM Album al
--    LEFT JOIN Song s on s.AlbumId = al.Id
--WHERE s.id Is Null

/* 7 */
--INSERT INTO Artist
--(ArtistName, YearEstablished)
---VALUES
--('Jimmy Eat World', '2001')

/* 8 */
--INSERT INTO Album
--(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES
--('Bleed American', '07/24/2001', 2798, 'DreamWorks', 28, 2)

/* 9 */
--INSERT INTO Song
--(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES
--('The MIddle', 166, '07/24/2001', 2, 28, 23)

/* 10 */
--SELECT 
--s.Title,
--al.Title,
--a.ArtistName
--FROM Song s
--    LEFT JOIN Artist a on s.ArtistId = a.id
--    LEFT JOIN Album al on s.AlbumId = al.Id
--WHERE s.ArtistId = 28

/* 11 */
--SELECT 
--al.Title,
--COUNT(s.Id) AS NumOfSongs
--FROM Song s
--LEFT JOIN Album al on s.AlbumId = al.id
--GROUP BY al.Title

/* 12 */
--SELECT 
--a.ArtistName,
--COUNT(s.Id) AS NumOfSongs
--FROM Artist a
--	LEFT JOIN Song s on s.ArtistId = a.Id
--	GROUP By a.ArtistName

/* 13 */
--SELECT 
--g.Name AS GenreName,
--COUNT(s.Id) AS NumOfSongs
--FROM Song s
--	LEFT JOIN Genre g on s.GenreId = g.Id
--	GROUP BY g.Name

/* 14 */
--SELECT 
--Artist.ArtistName,
--Count(DISTINCT Album.Label) AS LabelCount
--FROM Artist
--JOIN Album on Album.ArtistId = Artist.Id
--GROUP BY Artist.Id, Artist.ArtistName
--HAVING Count(DISTINCT Album.Label) > 1

/* 15 */
--SELECT Top 1 *
--FROM Song
--ORDER BY Song.SongLength DESC
--/* OR */
--SELECT s.*
--FROM Song s
--Where s.SongLength = (SELECT Max(Song.SongLength)FROM Song);

/* 16 */
--SELECT TOP 1 s.Title, s.SongLength
--FROM Song s
--	ORDER BY s.SongLength DESC

/* 17 */
--SELECT TOP 1 s.Title, s.SongLength, a.Title AS AlbumTitle
--FROM Song s
--	JOIN Album a ON s.AlbumId = a.Id
--	ORDER BY s.SongLength DESC