use Banca_provas;

/* BAIXA COMPLEXIDADE */
-- 1) Contar o número de fiscais alocados em uma aplicação específica
DELIMITER $$
CREATE PROCEDURE ContarFiscaisPorAplicacao(
    IN cnpjInstituicao VARCHAR(30), 
    IN cepInstituicao VARCHAR(30), 
    IN idConc INT
)
BEGIN
    SELECT COUNT(DISTINCT CPF_Fiscal) AS TotalFiscais
    FROM Banca_Provas.Fiscal_Aplicacao
    WHERE CNPJ_Inst = cnpjInstituicao AND CEP = cepInstituicao AND idConcurso = idConc;
END$$
DELIMITER ;



-- 2) Listar todos os fiscais alocados em um concurso específico
DELIMITER $$
CREATE PROCEDURE ListarFiscaisPorConcurso(
    IN idConc INT
)
BEGIN
	SELECT idConcurso, CPF_Fiscal
    FROM Banca_Provas.Fiscal_Aplicacao
    WHERE idConcurso = idConc;
END$$
DELIMITER ;

SELECT * FROM FIscal_aplicacao;




-- 3) Contar o número de aplicações de um fiscal em concursos
DELIMITER $$
CREATE PROCEDURE ContarAplicacoesFiscal(
    IN cpfFiscal VARCHAR(30)
)
BEGIN
    SELECT COUNT(*) AS TotalAplicacoes
    FROM Banca_Provas.Fiscal_Aplicacao
    WHERE CPF_Fiscal = cpfFiscal;
END$$
DELIMITER ;




-- 4) Contar o número de inscrições por concurso
DELIMITER $$
CREATE PROCEDURE ContarInscricoesPorConcurso(
    IN concursoID INT
)
BEGIN
    SELECT COUNT(*) AS TotalInscricoes
    FROM Banca_Provas.Inscricao
    WHERE idConcurso = concursoID;
END$$
DELIMITER ;




-- 5) Contar o número de candidatos por cota (categoria) em um concurso
DELIMITER $$
CREATE PROCEDURE ContarCandidatosPorCota(
    IN concursoID INT
)
BEGIN
    SELECT Cota, COUNT(*) AS TotalCandidatos
    FROM Banca_Provas.Inscricao
    WHERE idConcurso = concursoID
    GROUP BY Cota;
END$$
DELIMITER ;


