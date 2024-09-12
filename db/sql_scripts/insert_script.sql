select LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png');
SHOW VARIABLES LIKE 'secure_file_priv';
-- Inserindo 20 instâncias em cada tabela da modelagem de concursos

INSERT INTO Banca_Provas.Candidato (CPF_Candidato, Nome_Candidato, Telefone, Email, Data_Nascimento, Sexo, CEP_Candidato, UF, Cidade, Bairro, Rua, Complemento, Numero, Estado_Civil, Foto_Candidato) 
VALUES 
('12345678901', 'João Silva', '61999999999', 'joao.silva@email.com', '1990-01-01', 'Masculino', '70000000', 'DF', 'Brasília', 'Asa Sul', 'Rua A', 'Apto 101', 10, 'Solteiro', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678902', 'Maria Souza', '61888888888', 'maria.souza@email.com', '1988-05-12', 'Feminino', '71000000', 'DF', 'Brasília', 'Asa Norte', 'Rua B', 'Casa 202', 15, 'Casada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678903', 'Carlos Andrade', '61777777777', 'carlos.andrade@email.com', '1985-07-20', 'Masculino', '72000000', 'DF', 'Taguatinga', 'Centro', 'Rua C', 'Loja 5', 30, 'Divorciado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678904', 'Ana Costa', '61666666666', 'ana.costa@email.com', '1992-11-10', 'Feminino', '73000000', 'DF', 'Ceilândia', 'Setor O', 'Rua D', 'Quadra 10', 40, 'Solteira', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678905', 'José Pereira', '61555555555', 'jose.pereira@email.com', '1980-09-14', 'Masculino', '74000000', 'GO', 'Goiânia', 'Setor Bueno', 'Rua E', 'Bloco A', 50, 'Casado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678906', 'Fernanda Lima', '61444444444', 'fernanda.lima@email.com', '1995-02-25', 'Feminino', '75000000', 'GO', 'Anápolis', 'Centro', 'Rua F', 'Ed. Solar', 25, 'Solteira', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678907', 'Paulo Mendes', '61333333333', 'paulo.mendes@email.com', '1993-08-30', 'Masculino', '76000000', 'GO', 'Aparecida de Goiânia', 'Jardim Florido', 'Rua G', 'Apto 101', 15, 'Casado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678908', 'Juliana Almeida', '61222222222', 'juliana.almeida@email.com', '1989-04-17', 'Feminino', '77000000', 'MG', 'Belo Horizonte', 'Savassi', 'Rua H', 'Loja 15', 65, 'Divorciada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678909', 'Rafael Figueiredo', '61111111111', 'rafael.figueiredo@email.com', '1991-12-12', 'Masculino', '78000000', 'MG', 'Uberlândia', 'Centro', 'Rua I', 'Apto 202', 35, 'Casado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678910', 'Clara Neves', '61999988888', 'clara.neves@email.com', '1990-06-25', 'Feminino', '79000000', 'MG', 'Contagem', 'Eldorado', 'Rua J', 'Quadra 8', 20, 'Viúva', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678911', 'Rodrigo Dias', '61888877777', 'rodrigo.dias@email.com', '1982-01-19', 'Masculino', '80000000', 'SP', 'São Paulo', 'Vila Mariana', 'Rua K', 'Bloco C', 90, 'Solteiro', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678912', 'Luana Marques', '61777766666', 'luana.marques@email.com', '1987-03-22', 'Feminino', '81000000', 'SP', 'Campinas', 'Jardim das Paineiras', 'Rua L', 'Casa 12', 55, 'Casada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678913', 'Vinícius Cardoso', '61666655555', 'vinicius.cardoso@email.com', '1986-05-18', 'Masculino', '82000000', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua M', 'Ed. Atlântico', 12, 'Solteiro', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678914', 'Camila Barbosa', '61555544444', 'camila.barbosa@email.com', '1994-09-09', 'Feminino', '83000000', 'RJ', 'Niterói', 'Icaraí', 'Rua N', 'Apto 502', 22, 'Casada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678915', 'Diego Freitas', '61444433333', 'diego.freitas@email.com', '1981-06-29', 'Masculino', '84000000', 'BA', 'Salvador', 'Barra', 'Rua O', 'Casa 32', 100, 'Divorciado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678916', 'Bianca Araújo', '61333322222', 'bianca.araujo@email.com', '1983-11-11', 'Feminino', '85000000', 'BA', 'Feira de Santana', 'Centro', 'Rua P', 'Loja 23', 80, 'Solteira', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678917', 'Lucas Nunes', '61222211111', 'lucas.nunes@email.com', '1980-12-05', 'Masculino', '86000000', 'PE', 'Recife', 'Boa Viagem', 'Rua Q', 'Apto 1503', 55, 'Casado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678918', 'Aline Santos', '61111100000', 'aline.santos@email.com', '1996-07-16', 'Feminino', '87000000', 'PE', 'Olinda', 'Casa Caiada', 'Rua R', 'Ed. Primavera', 5, 'Viúva', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678919', 'Thiago Lopes', '61999977777', 'thiago.lopes@email.com', '1992-04-30', 'Masculino', '88000000', 'PE', 'Caruaru', 'Centro', 'Rua S', 'Loja 12', 65, 'Solteiro', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678920', 'Mariana Gomes', '61888866666', 'mariana.gomes@email.com', '1994-02-27', 'Feminino', '89000000', 'CE', 'Fortaleza', 'Meireles', 'Rua T', 'Casa 17', 20, 'Casada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),

('12345678921', 'Santa Monica', '61222211111', 'santa.m@email.com', '1980-12-05', 'Masculino', '86000000', 'PE', 'Recife', 'Boa Viagem', 'Rua Q', 'Apto 1503', 55, 'Casado', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678922', 'Marquim do Pneu', '61111100000', 'marquim.dpneu@email.com', '1996-07-16', 'Feminino', '87000000', 'PE', 'Olinda', 'Casa Caiada', 'Rua R', 'Ed. Primavera', 5, 'Viúva', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png')),
('12345678923', 'Porco Shaolin', '61999977777', 'porco.shaolin@email.com', '1992-04-30', 'Masculino', '88000000', 'PE', 'Caruaru', 'Centro', 'Rua S', 'Loja 12', 65, 'Solteiro', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_1.png')),
('12345678924', 'Teresa Cheia Das Graça', '61888866666', 'teresa.cheia@email.com', '1994-02-27', 'Feminino', '89000000', 'CE', 'Fortaleza', 'Meireles', 'Rua T', 'Casa 17', 20, 'Casada', LOAD_FILE('D:/ProgramData/MySQL/MySQL Server 8.0/Uploads/senhor_2.png'));


-- Tabela Orgao
INSERT INTO Banca_Provas.Orgao (Nome_Orgao, CNPJ_Orgao, Atuacao_Orgao)
VALUES 
('Ministério da Saúde', '12345678000100', 'Saúde Pública'),
('Ministério da Educação', '98765432000111', 'Educação'),
('Tribunal de Justiça', '45678912000144', 'Justiça'),
('Ministério do Trabalho', '75315926000188', 'Trabalho e Emprego'),
('Secretaria de Segurança Pública', '95175386000199', 'Segurança Pública'),
('Departamento de Trânsito', '85274136000122', 'Trânsito e Transporte'),
('Fundação Nacional de Saúde', '75315984000133', 'Saúde'),
('Prefeitura de Goiânia', '78945612000166', 'Gestão Municipal'),
('Prefeitura de Salvador', '98745612000199', 'Gestão Municipal'),
('Ministério da Cultura', '32165498700144', 'Cultura e Artes'),
('Ministério do Esporte', '96385274100188', 'Esporte e Lazer'),
('Agência Nacional de Transportes', '14785296300155', 'Transportes e Mobilidade'),
('Secretaria de Administração', '32165497800122', 'Gestão Pública'),
('Instituto Brasileiro de Geografia e Estatística', '12398765400144', 'Estatística e Pesquisas'),
('Controladoria Geral da União', '32165498700122', 'Transparência e Controle'),
('Defensoria Pública da União', '95135785200166', 'Defesa Jurídica'),
('Agência Nacional de Saúde Suplementar', '85274196300144', 'Regulação de Saúde Suplementar'),
('Secretaria de Meio Ambiente', '75315986400133', 'Meio Ambiente'),
('Agência Nacional de Águas', '98765412300177', 'Gestão de Recursos Hídricos');


-- Tabela Cargo
INSERT INTO Banca_Provas.Cargo (idCargo, Nome_Cargo, Salario, Descricao)
VALUES 
(1, 'Analista Administrativo', 4500.00, 'Cargo de nível superior para atuar na área administrativa'),
(2, 'Técnico de Informática', 3500.00, 'Cargo de nível médio para suporte em TI'),
(3, 'Engenheiro Civil', 7500.00, 'Cargo de nível superior para projetos e obras'),
(4, 'Assistente Administrativo', 2500.00, 'Cargo de nível médio para suporte administrativo'),
(5, 'Médico Clínico', 12000.00, 'Cargo de nível superior para atendimento médico'),
(6, 'Auxiliar de Enfermagem', 2200.00, 'Cargo de nível técnico para assistência de enfermagem'),
(7, 'Professor de Matemática', 4000.00, 'Cargo de nível superior para ensino fundamental e médio'),
(8, 'Professor de Educação Física', 3500.00, 'Cargo de nível superior para ensino fundamental e médio'),
(9, 'Agente de Segurança', 3000.00, 'Cargo de nível médio para proteção patrimonial'),
(10, 'Analista de TI', 6000.00, 'Cargo de nível superior para gestão de sistemas de informação'),
(11, 'Assistente Social', 3800.00, 'Cargo de nível superior para suporte social'),
(12, 'Contador', 5500.00, 'Cargo de nível superior para gestão contábil'),
(13, 'Advogado', 8000.00, 'Cargo de nível superior para serviços jurídicos'),
(14, 'Técnico em Logística', 3500.00, 'Cargo de nível médio para suporte logístico'),
(15, 'Nutricionista', 4500.00, 'Cargo de nível superior para gestão nutricional'),
(16, 'Engenheiro Eletricista', 9000.00, 'Cargo de nível superior para projetos elétricos'),
(17, 'Enfermeiro', 5000.00, 'Cargo de nível superior para assistência de enfermagem'),
(18, 'Auxiliar de Biblioteca', 2000.00, 'Cargo de nível médio para suporte em biblioteca'),
(19, 'Técnico em Segurança do Trabalho', 4000.00, 'Cargo de nível técnico para segurança do trabalho'),
(20, 'Arquiteto', 4000.00, 'Cargo de nível superior para projetos de arquitetura');



-- Tabela Concurso
INSERT INTO Banca_Provas.Concurso (idConcurso, idCargo, Nome_Concurso, Data_Concurso, Orgao_Realizador)
VALUES 
(1, 1, 'Concurso Analista Administrativo', '2024-11-15', 'Ministério da Saúde'),
(2, 2, 'Concurso Técnico de Informática', '2024-10-20', 'Ministério da Educação'),
(3, 3, 'Concurso Engenheiro Civil', '2024-09-10', 'Tribunal de Justiça'),
(4, 4, 'Concurso Assistente Administrativo', '2024-08-05', 'Ministério do Trabalho'),
(5, 5, 'Concurso Médico Clínico', '2024-07-12', 'Fundação Nacional de Saúde'),
(6, 6, 'Concurso Auxiliar de Enfermagem', '2024-06-20', 'Ministério da Saúde'),
(7, 7, 'Concurso Professor de Matemática', '2024-05-15', 'Ministério da Educação'),
(8, 8, 'Concurso Professor de Educação Física', '2024-04-10', 'Prefeitura de Goiânia'),
(9, 9, 'Concurso Agente de Segurança', '2024-03-22', 'Secretaria de Segurança Pública'),
(10, 10, 'Concurso Analista de TI', '2024-02-28', 'Ministério da Saúde'),
(11, 11, 'Concurso Assistente Social', '2024-01-18', 'Secretaria de Segurança Pública'),
(12, 12, 'Concurso Contador', '2023-12-25', 'Tribunal de Justiça'),
(13, 13, 'Concurso Advogado', '2023-11-30', 'Ministério do Trabalho'),
(14, 14, 'Concurso Técnico em Logística', '2023-10-27', 'Agência Nacional de Transportes'),
(15, 15, 'Concurso Nutricionista', '2023-09-15', 'Ministério da Saúde'),
(16, 16, 'Concurso Engenheiro Eletricista', '2023-08-09', 'Agência Nacional de Águas'),
(17, 17, 'Concurso Enfermeiro', '2023-07-05', 'Fundação Nacional de Saúde'),
(18, 18, 'Concurso Auxiliar de Biblioteca', '2023-06-12', 'Prefeitura de Salvador'),
(19, 19, 'Concurso Técnico em Segurança do Trabalho', '2023-05-25', 'Prefeitura de Goiânia'),
(20, 20, 'Concurso Fiscal de Obras', '2023-04-20', 'Secretaria de Administração');


-- Tabela Inscricao
INSERT INTO Banca_Provas.Inscricao (CPF_Candidato, idConcurso, idCargo, Data_Inscricao, Cota)
VALUES 
('12345678901', 1, 1, '2024-07-01', 'Ampla concorrência'),
('12345678921', 1, 1, '2024-07-01', 'Ampla concorrência'),
('12345678922', 1, 1, '2024-07-01', 'Ampla concorrência'),
('12345678923', 1, 1, '2024-07-01', 'Deficientes físicos'),
('12345678924', 1, 1, '2024-07-01', 'Negros'),

('12345678902', 2, 2, '2024-08-05', 'Negros'),
('12345678903', 2, 2, '2024-09-12', 'Ampla concorrência'),
('12345678904', 2, 2, '2024-07-15', 'Deficientes físicos'),
('12345678905', 2, 2, '2024-07-20', 'Ampla concorrência'),

('12345678903', 3, 3, '2024-09-12', 'Ampla concorrência'),
('12345678904', 4, 4, '2024-07-15', 'Deficientes físicos'),
('12345678905', 5, 5, '2024-07-20', 'Ampla concorrência'),
('12345678906', 6, 6, '2024-06-25', 'Negros'),
('12345678907', 7, 7, '2024-06-10', 'Deficientes físicos'),
('12345678908', 8, 8, '2024-05-30', 'Ampla concorrência'),
('12345678909', 9, 9, '2024-05-20', 'Ampla concorrência'),
('12345678910', 10, 10, '2024-04-18', 'Negros'),
('12345678911', 11, 11, '2024-03-10', 'Deficientes físicos'),
('12345678912', 12, 12, '2024-03-05', 'Ampla concorrência'),
('12345678913', 13, 13, '2024-02-22', 'Negros'),
('12345678914', 14, 14, '2024-01-30', 'Ampla concorrência'),
('12345678915', 15, 15, '2024-01-15', 'Deficientes físicos'),
('12345678916', 16, 16, '2024-01-02', 'Ampla concorrência'),
('12345678917', 17, 17, '2023-12-10', 'Negros'),
('12345678918', 18, 18, '2023-12-01', 'Deficientes físicos'),
('12345678919', 19, 19, '2023-11-25', 'Ampla concorrência'),
('12345678920', 20, 20, '2023-11-05', 'Negros');


-- Tabela Instituicao_Aplicadora
INSERT INTO Banca_Provas.Instituicao_Aplicadora (CNPJ, CEP, Razao_Social, Num_Salas, Num_Banheiros)
VALUES 
('12345678000100', '70000000', 'Instituto Nacional de Exames', 20, 10),
('98765432000111', '71000000', 'Centro de Avaliação Educacional', 15, 8),
('45678912000144', '72000000', 'Universidade Federal', 30, 12),
('75315926000188', '73000000', 'Instituto de Ciência e Tecnologia', 25, 14),
('95175386000199', '74000000', 'Escola de Administração Pública', 18, 6),
('85274136000122', '75000000', 'Faculdade de Direito', 22, 8),
('75315984000133', '76000000', 'Escola Técnica de Saúde', 17, 7),
('78945612000166', '77000000', 'Centro de Formação de Professores', 20, 9),
('98745612000199', '78000000', 'Escola de Enfermagem', 15, 8),
('32165498700144', '79000000', 'Centro de Tecnologia e Inovação', 28, 11),
('96385274100188', '80000000', 'Instituto de Ciências Sociais', 16, 6),
('14785296300155', '81000000', 'Faculdade de Engenharia', 19, 9),
('32165497800122', '82000000', 'Escola de Ciências Contábeis', 25, 10),
('12398765400144', '83000000', 'Faculdade de Medicina', 21, 7),
('32165498700122', '84000000', 'Escola de Artes e Cultura', 14, 5),
('95135785200166', '85000000', 'Faculdade de Arquitetura', 23, 8),
('85274196300144', '86000000', 'Escola de Comunicação', 24, 9),
('75315986400133', '87000000', 'Centro de Ciências Biológicas', 20, 6),
('98765412300177', '88000000', 'Escola de Meio Ambiente e Recursos', 22, 8);


-- Tabela Aplicacao
INSERT INTO Banca_Provas.Aplicacao (CNPJ_Instituicao, CEP, idConcurso, Total_Fiscais, Data_Aplicacao)
VALUES 
('12345678000100', '70000000', 1, 30, '2024-11-15'),
('98765432000111', '71000000', 2, 25, '2024-10-20'),
('45678912000144', '72000000', 3, 35, '2024-09-10'),
('75315926000188', '73000000', 4, 20, '2024-08-05'),
('95175386000199', '74000000', 5, 28, '2024-07-12'),
('85274136000122', '75000000', 6, 32, '2024-06-20'),
('75315984000133', '76000000', 7, 24, '2024-05-15'),
('78945612000166', '77000000', 8, 26, '2024-04-10'),
('98745612000199', '78000000', 9, 22, '2024-03-22'),
('32165498700144', '79000000', 10, 33, '2024-02-28'),
('96385274100188', '80000000', 11, 29, '2024-01-18'),
('14785296300155', '81000000', 12, 27, '2023-12-25'),
('32165497800122', '82000000', 13, 31, '2023-11-30'),
('12398765400144', '83000000', 14, 23, '2023-10-27'),
('32165498700122', '84000000', 15, 20, '2023-09-15'),
('95135785200166', '85000000', 16, 18, '2023-08-09'),
('85274196300144', '86000000', 17, 34, '2023-07-05'),
('75315986400133', '87000000', 18, 19, '2023-06-12'),
('98765412300177', '88000000', 19, 21, '2023-05-25');


-- Tabela Familiares
INSERT INTO Banca_Provas.Familiares (CPF_Candidato, CPF_Familiar, Nome, Data_Nascimento, Sexo)
VALUES 
('12345678901', '32165498701', 'Carlos Silva', '1965-05-10', 'Masculino'),
('12345678902', '32165498702', 'Ana Souza', '1970-07-12', 'Feminino'),
('12345678903', '32165498703', 'Jorge Andrade', '1958-08-05', 'Masculino'),
('12345678904', '32165498704', 'Clara Costa', '1960-09-14', 'Feminino'),
('12345678905', '32165498705', 'José Pereira', '1955-10-30', 'Masculino'),
('12345678906', '32165498706', 'Fernanda Lima', '1962-03-19', 'Feminino'),
('12345678907', '32165498707', 'Paulo Mendes', '1968-06-20', 'Masculino'),
('12345678908', '32165498708', 'Juliana Almeida', '1972-11-11', 'Feminino'),
('12345678909', '32165498709', 'Rafael Figueiredo', '1950-12-01', 'Masculino'),
('12345678910', '32165498710', 'Clara Neves', '1965-07-07', 'Feminino'),
('12345678911', '32165498711', 'Rodrigo Dias', '1960-01-19', 'Masculino'),
('12345678912', '32165498712', 'Luana Marques', '1962-03-10', 'Feminino'),
('12345678913', '32165498713', 'Vinícius Cardoso', '1959-05-02', 'Masculino'),
('12345678914', '32165498714', 'Camila Barbosa', '1970-06-21', 'Feminino'),
('12345678915', '32165498715', 'Diego Freitas', '1952-09-08', 'Masculino'),
('12345678916', '32165498716', 'Bianca Araújo', '1968-02-27', 'Feminino'),
('12345678917', '32165498717', 'Lucas Nunes', '1955-03-17', 'Masculino'),
('12345678918', '32165498718', 'Aline Santos', '1972-07-04', 'Feminino'),
('12345678919', '32165498719', 'Thiago Lopes', '1956-09-19', 'Masculino'),
('12345678920', '32165498720', 'Mariana Gomes', '1974-12-24', 'Feminino');


-- Tabela Fiscal
INSERT INTO Banca_Provas.Fiscal (CPF, Nome, Sexo, Data_Nascimento)
VALUES 
('11111111111', 'Pedro Farias', 'Masculino', '1980-03-15'),
('22222222222', 'Larissa Costa', 'Feminino', '1992-12-02'),
('33333333333', 'Lucas Silva', 'Masculino', '1975-07-09'),
('44444444444', 'Ana Clara Mendes', 'Feminino', '1984-09-23'),
('55555555555', 'José Santos', 'Masculino', '1970-05-14'),
('66666666666', 'Paula Nogueira', 'Feminino', '1990-02-18'),
('77777777777', 'Thiago Souza', 'Masculino', '1983-08-30'),
('88888888888', 'Cláudia Martins', 'Feminino', '1985-04-25'),
('99999999999', 'Marcos Ferreira', 'Masculino', '1976-06-17'),
('10101010101', 'Juliana Ribeiro', 'Feminino', '1995-07-14'),
('12121212121', 'Roberto Alves', 'Masculino', '1974-12-01'),
('13131313131', 'Bianca Costa', 'Feminino', '1987-10-28'),
('14141414141', 'Eduardo Lima', 'Masculino', '1982-05-23'),
('15151515151', 'Camila Rocha', 'Feminino', '1989-06-19'),
('16161616161', 'Felipe Moraes', 'Masculino', '1991-03-04'),
('17171717171', 'Amanda Neves', 'Feminino', '1979-11-13'),
('18181818181', 'Gabriel Cardoso', 'Masculino', '1986-01-27'),
('19191919191', 'Isabela Alves', 'Feminino', '1993-05-05'),
('20202020202', 'Ricardo Silva', 'Masculino', '1981-04-11');


-- Tabela Resultado
INSERT INTO Banca_Provas.Resultado (nResultado, CPF_Candidato, idConcurso, idCargo, Data_Inscricao, Nota, Colocacao, Data_Convocao)
VALUES 
(1, '12345678901', 1, 1, '2024-07-01', 85, 1, '2025-09-09'),
(1, '12345678902', 2, 2, '2024-08-05', 75, 2, '2025-09-09'),
(2, '12345678903', 3, 3, '2024-09-12', 82, 3, '2025-09-09'),
(1, '12345678904', 4, 4, '2024-07-15', 78, 4, '2025-09-09'),
(1, '12345678905', 5, 5, '2024-07-20', 90, 1, '2025-09-09'),
(1, '12345678906', 6, 6, '2024-06-25', 88, 2, '2025-09-09'),
(1, '12345678907', 7, 7, '2024-06-10', 70, 5, '2025-09-09'),
(1, '12345678908', 8, 8, '2024-05-30', 65, 6, '2025-09-09'),
(1, '12345678909', 9, 9, '2024-05-20', 60, 7, '2025-09-09'),
(1, '12345678910', 10, 10, '2024-04-18', 92, 1, '2025-09-09'),
(1, '12345678911', 11, 11, '2024-03-10', 55, 8, '2025-09-09'),
(1, '12345678912', 12, 12, '2024-03-05', 87, 2, '2025-09-09'),
(1, '12345678913', 13, 13, '2024-02-22', 62, 7, '2025-09-09'),
(1, '12345678914', 14, 14, '2024-01-30', 77, 4, '2025-09-09'),
(1, '12345678915', 15, 15, '2024-01-15', 68, 5, '2025-09-09'),
(1, '12345678916', 16, 16, '2024-01-02', 94, 1, '2025-09-09'),
(1, '12345678917', 17, 17, '2023-12-10', 50, 9, '2025-09-09'),
(1, '12345678918', 18, 18, '2023-12-01', 73, 4, '2025-09-09'),
(1, '12345678919', 19, 19, '2023-11-25', 91, 1, '2025-09-09'),
(1, '12345678920', 20, 20, '2023-11-05', 66, 6, '2025-09-09'),

(1, '12345678921', 1, 1, '2024-07-01', 72, 2, '2025-09-09'),
(1, '12345678922', 1, 1, '2024-07-01', 65, 3, '2025-09-09'),
(1, '12345678923', 1, 1, '2024-07-01', 32, 1, '2025-09-09'),
(1, '12345678924', 1, 1, '2024-07-01', 21, 1, '2025-09-09'),

(1, '12345678903', 2, 2, '2024-09-12', 65, 3, '2025-09-09'),
(1, '12345678904', 2, 2, '2024-07-15', 32, 1, '2025-09-09'),
(1, '12345678905', 2, 2, '2024-07-20', 21, 1, '2025-09-09');




-- Tabela Fiscal_Aplicacao
INSERT INTO Banca_Provas.Fiscal_Aplicacao (CPF_Fiscal, CNPJ_Inst, CEP, idConcurso)
VALUES 
('11111111111', '12345678000100', '70000000', 1),
('22222222222', '12345678000100', '70000000', 1),
('33333333333', '12345678000100', '70000000', 1),
('22222222222', '98765432000111', '71000000', 2),
('33333333333', '98765432000111', '71000000', 2),
('44444444444', '98765432000111', '71000000', 2),
('33333333333', '45678912000144', '72000000', 3),
('44444444444', '45678912000144', '72000000', 3),
('55555555555', '45678912000144', '72000000', 3),
('44444444444', '75315926000188', '73000000', 4),
('55555555555', '75315926000188', '73000000', 4),
('66666666666', '75315926000188', '73000000', 4),
('55555555555', '95175386000199', '74000000', 5),
('66666666666', '95175386000199', '74000000', 5),
('77777777777', '95175386000199', '74000000', 5),
('66666666666', '85274136000122', '75000000', 6),
('77777777777', '85274136000122', '75000000', 6),
('88888888888', '85274136000122', '75000000', 6),
('77777777777', '75315984000133', '76000000', 7),
('88888888888', '75315984000133', '76000000', 7),
('99999999999', '75315984000133', '76000000', 7),
('88888888888', '78945612000166', '77000000', 8),
('99999999999', '78945612000166', '77000000', 8),
('10101010101', '78945612000166', '77000000', 8),
('99999999999', '98745612000199', '78000000', 9),
('10101010101', '98745612000199', '78000000', 9),
('12121212121', '98745612000199', '78000000', 9),
('10101010101', '32165498700144', '79000000', 10),
('12121212121', '32165498700144', '79000000', 10),
('13131313131', '32165498700144', '79000000', 10),
('12121212121', '96385274100188', '80000000', 11),
('13131313131', '96385274100188', '80000000', 11),
('14141414141', '96385274100188', '80000000', 11),
('13131313131', '14785296300155', '81000000', 12),
('14141414141', '14785296300155', '81000000', 12),
('15151515151', '14785296300155', '81000000', 12),
('14141414141', '32165497800122', '82000000', 13),
('15151515151', '32165497800122', '82000000', 13),
('16161616161', '32165497800122', '82000000', 13),
('15151515151', '12398765400144', '83000000', 14),
('16161616161', '12398765400144', '83000000', 14),
('17171717171', '12398765400144', '83000000', 14),
('16161616161', '32165498700122', '84000000', 15),
('17171717171', '32165498700122', '84000000', 15),
('18181818181', '32165498700122', '84000000', 15),
('17171717171', '95135785200166', '85000000', 16),
('18181818181', '95135785200166', '85000000', 16),
('19191919191', '95135785200166', '85000000', 16),
('18181818181', '85274196300144', '86000000', 17),
('19191919191', '85274196300144', '86000000', 17),
('20202020202', '85274196300144', '86000000', 17),
('19191919191', '75315986400133', '87000000', 18),
('20202020202', '75315986400133', '87000000', 18),
('11111111111', '75315986400133', '87000000', 18),
('20202020202', '98765412300177', '88000000', 19),
('11111111111', '98765412300177', '88000000', 19),
('16161616161', '98765412300177', '88000000', 19);

