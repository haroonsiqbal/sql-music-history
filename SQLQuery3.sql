SELECT a.Title, s.Title, s.SongLength FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id
WHERE s.SongLength = (
SELECT MAX(s.SongLength)
FROM Song s);
