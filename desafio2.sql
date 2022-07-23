-- 2
SELECT (SELECT COUNT(SpotifyClone.cancoes.cancao) FROM SpotifyClone.cancoes) AS cancoes,
(SELECT COUNT(SpotifyClone.artistas.artista) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(SpotifyClone.albuns.album) FROM SpotifyClone.albuns) AS albuns
FROM DUAL;

-- FROM DUAL RETIRADO DESTE LINK: https://stackoverflow.com/questions/606234/select-count-from-multiple-tables