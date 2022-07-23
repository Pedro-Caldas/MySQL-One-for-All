-- 3
SELECT SpotifyClone.usuarios.usuario,
COUNT(SpotifyClone.reproducoes.usuario_id) AS 'qtde_musicas_ouvidas',
ROUND((SUM(SpotifyClone.cancoes.duracao_segundos) / 60), 2) AS 'total_minutos'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.reproducoes
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.cancoes.cancao_id = SpotifyClone.reproducoes.cancao_id
GROUP BY SpotifyClone.usuarios.usuario
ORDER BY SpotifyClone.usuarios.usuario;