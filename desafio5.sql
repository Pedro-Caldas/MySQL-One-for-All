-- 5
SELECT SpotifyClone.cancoes.cancao,
COUNT(SpotifyClone.reproducoes.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.reproducoes
ON SpotifyClone.reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
GROUP BY SpotifyClone.cancoes.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;