SELECT * FROM `basedosdados.br_inep_ideb.brasil` LIMIT 1000;

-- Comparar o Ideb entre escolas públicas e privadas
SELECT 
  rede,
  AVG(ideb) AS avg_ideb
FROM
  `basedosdados.br_inep_ideb.brasil`
WHERE 
  rede = 'publica' OR
  rede = 'privada'
GROUP BY 
  rede;

SELECT 
  AVG(CASE WHEN rede = 'privada' THEN ideb END) AS Media_Privada,
  AVG(CASE WHEN rede = 'publica' THEN ideb END) AS Media_Publica
FROM
  `basedosdados.br_inep_ideb.brasil`
WHERE 
  rede in ('privada','publica');

SELECT rede,
  AVG(ideb) as Media
FROM `basedosdados.br_inep_ideb.brasil`
WHERE 
  rede in ('privada','publica')
GROUP BY
  rede;