use Banca_provas;

/* MEDIA COMPLEXIDADE */
-- 1) Contar o número total de fiscais em todos os concursos
DELIMITER $$
CREATE PROCEDURE ContarTotalFiscaisEmConcursos()
BEGIN
    SELECT idConcurso, COUNT(CPF_Fiscal) AS TotalFiscais
    FROM Banca_Provas.Fiscal_Aplicacao
    GROUP BY idConcurso
    ORDER BY idConcurso;
END$$
DELIMITER ;



-- 2) Listar os concursos com o maior número de fiscais alocados
DELIMITER $$
CREATE PROCEDURE ListarConcursosComMaisFiscais()
BEGIN
    SELECT idConcurso, COUNT(CPF_Fiscal) AS TotalFiscais
    FROM Banca_Provas.Fiscal_Aplicacao
    GROUP BY idConcurso
    ORDER BY TotalFiscais DESC
    LIMIT 10;
END$$
DELIMITER ;



-- 3) Calcular a média de notas de um concurso
DELIMITER $$
CREATE PROCEDURE CalcularMediaNotasConcurso(
    IN concursoID INT
)
BEGIN
    SELECT AVG(Nota) AS MediaNotas
    FROM Banca_Provas.Resultado
    WHERE idConcurso = concursoID;
END$$
DELIMITER ;


-- 4) Listar os 10 primeiros candidatos por nota em um concurso
DELIMITER $$
CREATE PROCEDURE ListarTop10CandidatosPorNota(
    IN concursoID INT
)
BEGIN
    SELECT c.Nome_Candidato, r.Nota
    FROM Banca_Provas.Candidato c
    JOIN Banca_Provas.Resultado r ON c.CPF_Candidato = r.CPF_Candidato
    WHERE r.idConcurso = concursoID
    ORDER BY r.Nota DESC
    LIMIT 10;
END$$
DELIMITER ;

-- 5) Gerar relatório de inscrições com o status de aprovação dos candidatos
DELIMITER $$
CREATE PROCEDURE RelatorioInscricoesComStatusAprovacao(
    IN concursoID INT
)
BEGIN
    SELECT 
		c.Nome_Candidato, 
        r.Nota, 
        r.Data_Convocao, 
        r.nResultado, 
        r.idConcurso, 
        r.idCargo,
    CASE
        WHEN r.Nota >= 70 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS Status
    FROM Banca_Provas.Candidato c
    JOIN Banca_Provas.Resultado r ON c.CPF_Candidato = r.CPF_Candidato
    WHERE r.idConcurso = concursoID;
END$$
DELIMITER ;


 