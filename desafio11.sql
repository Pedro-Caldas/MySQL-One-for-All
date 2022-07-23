-- 11
SELECT SpotifyClone.cancoes.cancao AS nome_musica,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(SpotifyClone.cancoes.cancao, 'Streets', 'Code Review'), 'Her Own', 'Trybe'),
'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request') AS novo_nome
FROM SpotifyClone.cancoes
WHERE SpotifyClone.cancoes.cancao = 'Dance With Her Own'
OR SpotifyClone.cancoes.cancao = "Let's Be Silly"
OR SpotifyClone.cancoes.cancao = 'Magic Circus'
OR SpotifyClone.cancoes.cancao = 'Troubles Of My Inner Fire'
OR SpotifyClone.cancoes.cancao = 'Without My Streets'
ORDER BY nome_musica;