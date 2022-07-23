-- 10
SELECT SpotifyClone.cancoes.cancao AS nome,
COUNT(SpotifyClone.reproducoes.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.reproducoes
ON SpotifyClone.reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
WHERE SpotifyClone.usuarios.plano_id IN (1, 4)
GROUP BY nome
ORDER BY nome;