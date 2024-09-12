use Banca_provas;

-- 1) Gerar um relatório completo do desempenho dos candidatos em um concurso
DELIMITER $$
CREATE PROCEDURE GerarRelatorioDesempenhoConcurso(
    IN concursoID INT
)
BEGIN
    SELECT c.Nome_Candidato, r.Nota, r.Colocacao, 
    CASE
        WHEN r.Nota >= 70 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS Status,
    (SELECT MAX(Nota) FROM Banca_Provas.Resultado WHERE idConcurso = concursoID) AS MaiorNota,
    (SELECT MIN(Nota) FROM Banca_Provas.Resultado WHERE idConcurso = concursoID) AS MenorNota,
    (SELECT AVG(Nota) FROM Banca_Provas.Resultado WHERE idConcurso = concursoID) AS MediaNota
    FROM Banca_Provas.Candidato c
    JOIN Banca_Provas.Resultado r ON c.CPF_Candidato = r.CPF_Candidato
    WHERE r.idConcurso = concursoID
    ORDER BY r.Nota DESC;
END$$
DELIMITER ;



-- 2) Gerar relatório de aprovações por cota em um concurso
DELIMITER $$
CREATE PROCEDURE RelatorioAprovacoesPorCota(
    IN concursoID INT
)
BEGIN
    SELECT i.Cota, COUNT(*) AS TotalAprovados
    FROM Banca_Provas.Inscricao i
    JOIN Banca_Provas.Resultado r ON i.CPF_Candidato = r.CPF_Candidato
    WHERE r.idConcurso = concursoID AND r.Nota >= 70
    GROUP BY i.Cota;
END$$
DELIMITER ;



-- 3) Relatório de Distribuição de Candidatos por Faixa de Notas em um Concurso
DELIMITER $$
CREATE PROCEDURE RelatorioDistribuicaoPorFaixaDeNotas(
    IN concursoID INT
)
BEGIN
    SELECT 
        CASE
            WHEN Nota BETWEEN 0 AND 50 THEN '0-50'
            WHEN Nota BETWEEN 51 AND 70 THEN '51-70'
            WHEN Nota BETWEEN 71 AND 85 THEN '71-85'
            WHEN Nota BETWEEN 86 AND 100 THEN '86-100'
            ELSE 'Fora da Faixa'
        END AS Faixa_De_Nota,
        COUNT(*) AS Total_Candidatos
    FROM Banca_Provas.Resultado
    WHERE idConcurso = concursoID
    GROUP BY Faixa_De_Nota
    ORDER BY Faixa_De_Nota ASC;
END$$
DELIMITER ;