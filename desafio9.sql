SELECT CAST(SUM(LENGTH(SpotifyClone.reproducoes.usuario_id)) AS UNSIGNED)
AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducoes
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
WHERE SpotifyClone.usuarios.usuario = 'Bill';

-- CAST RETIRADO DESTE LINK: https://stackoverflow.com/questions/12126991/cast-from-varchar-to-int-mysql