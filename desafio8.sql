SELECT SpotifyClone.artistas.artista,
SpotifyClone.albuns.album
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns
ON SpotifyClone.artistas.artista_id = SpotifyClone.albuns.artista_id
WHERE SpotifyClone.artistas.artista = 'Walter Phoenix';