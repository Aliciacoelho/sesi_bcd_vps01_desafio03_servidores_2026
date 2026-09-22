USE provisionamento_acessos;

INSERT INTO usuario (nome, email, cargo, departamento, status) VALUES
('Ana Guedes', 'ana.guedes@empresa.com', 'Desenvolvedora', 'Tecnologia', 'Ativo'),
('Marcos Dias', 'marcos.dias@empresa.com', 'Analista de Sistemas', 'Tecnologia', 'Ativo'),
('Beatriz Carvalho', 'beatriz.carvalho@empresa.com', 'Gerente', 'Administrativo', 'Ativo');

INSERT INTO servidor (nome, hostname, ip, sistema_operacional, ambiente) VALUES
('Servidor Web', 'SRV-WEB-01', '192.168.1.10', 'Ubuntu Server 24.04', 'Produção'),
('Servidor Banco', 'SRV-DB-01', '192.168.1.20', 'Ubuntu Server 24.04', 'Produção'),
('Servidor Testes', 'SRV-TEST-01', '192.168.1.30', 'Windows Server 2022', 'Testes');

INSERT INTO conta_acesso (id_usuario, id_servidor, login, status, data_criacao, data_expiracao) VALUES
(1, 1, 'ana.guedes', 'Ativa', '2026-09-01', NULL),
(2, 2, 'marcos.dias', 'Ativa', '2026-09-02', NULL),
(3, 3, 'beatriz.carvalho', 'Ativa', '2026-09-03', '2026-12-31');

INSERT INTO perfil_permissao (nome, descricao, nivel_acesso) VALUES
('Leitura', 'Permite consultar informações sem alterar dados.', 'Baixo'),
('Desenvolvedor', 'Permite executar atividades de desenvolvimento no servidor.', 'Médio'),
('Administrador', 'Permite administrar recursos e configurações do servidor.', 'Alto');

INSERT INTO acesso (id_conta, id_perfil, data_inicio, data_fim, status) VALUES
(1, 2, '2026-09-01', NULL, 'Ativo'),
(2, 3, '2026-09-02', NULL, 'Ativo'),
(3, 1, '2026-09-03', '2026-12-31', 'Ativo');
