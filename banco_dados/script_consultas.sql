ALTER TABLE Municipios_Brasileiros ADD COLUMN pais;

UPDATE Municipios_Brasileiros SET pais='Brasil';

ALTER TABLE Municipios_Brasileiros DROP COLUMN pais;

SELECT * FROM Municipios_Brasileiros WHERE Cidade LIKE 'Pinh%';

SELECT * FROM Municipios_Status WHERE populacao_residente>50000;

SELECT municipio_ID, populacao_residente FROM Municipios_Status WHERE populacao_residente>50000;

SELECT Municipios_Brasileiros.Cidade, Municipios_Status.populacao_residente FROM Municipios_Brasileiros 
INNER JOIN Municipios_Status ON Municipios_Brasileiros.municipio_ID = Municipios_Status.municipio_ID;

SELECT Estado, COUNT(Cidade) Total_Cidades FROM Municipios_Brasileiros GROUP BY Estado ORDER BY Total_Cidades DESC;

SELECT Estado, COUNT(Cidade) Total_Cidades FROM Municipios_Brasileiros GROUP BY Estado ORDER BY 2 DESC; -- SEGUNDO ITEM

SELECT SUM(pessoas_brancas), SUM(pessoas_pretas_pardas) FROM Gerencia_Regiao;

SELECT Regiao, MAX(pessoas_pretas_pardas) FROM Gerencia_Regiao;

SELECT Regiao, MIN(pessoas_pretas_pardas) FROM Gerencia_Regiao;

SELECT Regiao FROM Gerencia_Regiao WHERE gerencia_branca  > gerencia_preta_parda;


SELECT Estado, SUM(populacao_residente) AS pop_total FROM Municipios_Brasileiros INNER JOIN Municipios_Status
ON Municipios_Status.municipio_ID = Municipios_Brasileiros.municipio_ID 
GROUP BY Estado
ORDER BY pop_total ASC;