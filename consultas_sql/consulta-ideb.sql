SELECT rede FROM `basedosdados.br_inep_ideb.brasil`;

SELECT
  rede,
  avg(ideb) as media_ideb
FROM 
  `basedosdados.br_inep_ideb.brasil`
WHERE
  ano = 2005
GROUP BY 
  rede;

