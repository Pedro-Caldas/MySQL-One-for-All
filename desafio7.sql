-- 7
SELECT SpotifyClone.artistas.artista,
SpotifyClone.albuns.album,
COUNT(SpotifyClone.usuario_artista.usuario_id) AS seguidores
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns
ON SpotifyClone.artistas.artista_id = SpotifyClone.albuns.artista_id
INNER JOIN SpotifyClone.usuario_artista
ON SpotifyClone.usuario_artista.artista_id = SpotifyClone.artistas.artista_id
GROUP BY SpotifyClone.artistas.artista, SpotifyClone.albuns.album
ORDER BY seguidores DESC, SpotifyClone.artistas.artista, SpotifyClone.albuns.album;