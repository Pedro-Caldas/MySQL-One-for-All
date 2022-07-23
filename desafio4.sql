-- 4
SELECT SpotifyClone.usuarios.usuario,
IF(MAX(YEAR(SpotifyClone.reproducoes.data_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.reproducoes
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
GROUP BY SpotifyClone.usuarios.usuario_id
ORDER BY SpotifyClone.usuarios.usuario;