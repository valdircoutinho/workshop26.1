CREATE DATABASE velozcar;
USE velozcar;

CREATE TABLE cliente (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
email VARCHAR(50) UNIQUE,
telefone VARCHAR(15),
endereco VARCHAR(50),
data_cadastro DATE NOT NULL,
status VARCHAR(20)
);

INSERT INTO cliente (nome, cpf, email, telefone, endereco, data_cadastro, status) VALUES
('João Silva', '11111111111', 'joao1@email.com', '83999990001', 'Rua A', '2024-01-10', 'ativo'),
('Ze Barreto', '22222222222', 'ze@email.com', '83999990002', 'Rua B', '2024-01-11', 'ativo'),
('Gera Guerra', '33333333333', 'gera@email.com', '83999990003', 'Rua C', '2024-01-12', 'ativo'),
('Verdinho Silva', '44444444444', 'verdinho@email.com', '83999990004', 'Rua D', '2024-01-13', 'ativo'),
('Costa Neto', '55555555555', 'costa@email.com', '83999990005', 'Rua E', '2024-01-14', 'ativo'),
('Valdir Coutinho', '66666666666', 'valdir@email.com', '83999990006', 'Rua F', '2024-01-15', 'ativo'),
('Rogerio Som', '77777777777', 'rogerio@email.com', '83999990007', 'Rua G', '2024-01-16', 'ativo'),
('Diego Aguiar', '88888888888', 'diego@email.com', '83999990008', 'Rua H', '2024-01-17', 'ativo'),
('Sabrina Maia', '99999999999', 'sabrina@email.com', '83999990009', 'Rua I', '2024-01-18', 'ativo'),
('Rose da Costa', '10101010101', 'rose@email.com', '83999990010', 'Rua J', '2024-01-19', 'ativo');

CREATE TABLE funcionario (
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
cargo VARCHAR(50),
salario DECIMAL(10,2),
telefone VARCHAR(15),
email VARCHAR(50),
data_admissao DATE,
status VARCHAR(20)
);

INSERT INTO funcionario (nome, cpf, cargo, salario, telefone, email, data_admissao, status) VALUES
('Levi Andrade', '11122233345', 'Gerente Financeiro', 7299.00, '11321', 'levi@email.com', '2026-03-21', 'ativo'),
('Wesley Safadao', '98723265672', 'Gerente Comercial', 4299.00, '7653', 'wesley@email.com', '2025-03-21', 'ativo'),
('Fernandinha', '18735925332', 'Sub Gerente', 7229.00, '8763', 'fernandinha@email.com', '2026-06-21', 'ativo'),
('Bruna Souza', '97533689753', 'CEO', 7199.00, '87632', 'bruna@email.com', '2000-03-01', 'ativo'),
('Paula Roberta', '97653223318', 'Gerente de RH', 3299.00, '12432', 'paula@email.com', '2018-03-21', 'ativo'),
('Cristiane Batista', '09080064347', 'Atendente', 3000.00, '11321', 'cristiane@email.com', '2006-03-21', 'ativo'),
('Eraldo Costa', '86543268262', 'Vendedor', 5342.00, '67837', 'eraldo@email.com', '2016-03-31', 'ativo'),
('Felipe Cesar', '99876545672', 'Estagiario', 800.00, '12341', 'felipe@email.com', '2026-04-21', 'ativo'),
('Guilherme Santos', '90887638932', 'Estagiario', 800.00, '23421', 'guilherme@email.com', '2026-03-21', 'ativo'),
('Raquel Luiza', '13164533445', 'Estagiario', 900.00, '1344', 'raquel@email.com', '2026-05-21', 'ativo');

CREATE TABLE veiculo (
id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
placa VARCHAR(10) UNIQUE NOT NULL,
modelo VARCHAR(50),
cor VARCHAR(30),
ano INT,
valor_diaria DECIMAL(10,2),
status VARCHAR(20),
quilometragem INT
);

INSERT INTO veiculo (placa, modelo, cor, ano, valor_diaria, status, quilometragem) VALUES
('ABC1A23', 'Gol', 'Branco', 2020, 120.00, 'disponivel', 45000),
('DEF2B34', 'Onix', 'Preto', 2021, 150.00, 'disponivel', 30000),
('GHI3C45', 'HB20', 'Prata', 2019, 110.00, 'alugado', 60000),
('JKL4D56', 'Corolla', 'Cinza', 2022, 250.00, 'disponivel', 20000),
('MNO5E67', 'Civic', 'Preto', 2020, 240.00, 'manutencao', 50000),
('PQR6F78', 'Argo', 'Vermelho', 2021, 130.00, 'disponivel', 35000),
('STU7G89', 'Cronos', 'Branco', 2018, 100.00, 'alugado', 70000),
('VWX8H90', 'Compass', 'Preto', 2023, 300.00, 'disponivel', 10000),
('YZA9I12', 'Renegade', 'Azul', 2022, 280.00, 'manutencao', 15000),
('BCD0J34', 'Kwid', 'Branco', 2019, 90.00, 'disponivel', 55000);

CREATE TABLE aluguel (
id_aluguel INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_funcionario INT,
id_veiculo INT,
data_inicio DATE,
data_fim DATE,
valor_total DECIMAL(10,2),
status VARCHAR(20),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

INSERT INTO aluguel (id_cliente, id_funcionario, id_veiculo, data_inicio, data_fim, valor_total, status) VALUES
(1,1,1,'2026-03-01','2026-03-05',600.00,'finalizado'),
(2,2,2,'2026-03-02','2026-03-06',750.00,'finalizado'),
(3,3,3,'2026-03-03','2026-03-08',550.00,'ativo'),
(4,4,4,'2026-03-04','2026-03-10',1500.00,'ativo'),
(5,5,5,'2026-03-05','2026-03-09',960.00,'atrasado'),
(6,6,6,'2026-03-06','2026-03-11',650.00,'finalizado'),
(7,7,7,'2026-03-07','2026-03-12',500.00,'ativo'),
(8,8,8,'2026-03-08','2026-03-13',1500.00,'finalizado'),
(9,9,9,'2026-03-09','2026-03-14',1400.00,'ativo'),
(10,10,10,'2026-03-10','2026-03-15',450.00,'finalizado');

CREATE TABLE pagamento (
id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
id_aluguel INT UNIQUE,
valor DECIMAL(10,2),
data_pagamento DATE,
metodo VARCHAR(30),
status VARCHAR(20),
codigo_transacao VARCHAR(100),
observacao VARCHAR(200),
FOREIGN KEY (id_aluguel) REFERENCES aluguel(id_aluguel)
);

INSERT INTO pagamento (id_aluguel, valor, data_pagamento, metodo, status, codigo_transacao, observacao) VALUES
(1, 600.00, '2026-03-05', 'pix', 'concluido', 'TXN001', 'Pagamento OK'),
(2, 750.00, '2026-03-06', 'cartao', 'concluido', 'TXN002', 'Pagamento OK'),
(3, 550.00, '2026-03-08', 'boleto', 'pendente', 'TXN003', 'Aguardando pagamento'),
(4, 1500.00, '2026-03-10', 'pix', 'pendente', 'TXN004', 'Pagamento parcial'),
(5, 960.00, '2026-03-09', 'cartao', 'cancelado', 'TXN005', 'Pagamento recusado'),
(6, 650.00, '2026-03-11', 'pix', 'concluido', 'TXN006', 'Pagamento OK'),
(7, 500.00, '2026-03-12', 'boleto', 'pendente', 'TXN007', 'Aguardando'),
(8, 1500.00, '2026-03-13', 'cartao', 'concluido', 'TXN008', 'Pagamento OK'),
(9, 1400.00, '2026-03-14', 'pix', 'pendente', 'TXN009', 'Em análise'),
(10, 450.00, '2026-03-15', 'boleto', 'concluido', 'TXN010', 'Pagamento OK');

CREATE TABLE manutencao (
id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
id_veiculo INT,
descricao VARCHAR(100),
custo DECIMAL(10,2),
data_manutencao DATE,
responsavel VARCHAR(100),
tipo VARCHAR(50),
status VARCHAR(20),
FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

INSERT INTO manutencao (id_veiculo, descricao, custo, data_manutencao, responsavel, tipo, status) VALUES
(1, 'Troca de óleo', 150.00, '2026-02-10', 'Carlos Mecânico', 'preventiva', 'concluida'),
(2, 'Alinhamento', 200.00, '2026-02-12', 'Oficina Central', 'preventiva', 'concluida'),
(3, 'Freios', 500.00, '2026-02-15', 'João Mecânico', 'corretiva', 'concluida'),
(4, 'Revisão', 800.00, '2026-02-18', 'Auto Center', 'preventiva', 'concluida'),
(5, 'Bateria', 350.00, '2026-02-20', 'Carlos Mecânico', 'corretiva', 'pendente'),
(6, 'Pneus', 1200.00, '2026-02-22', 'PneuCar', 'corretiva', 'concluida'),
(7, 'Motor', 1500.00, '2026-02-25', 'Oficina Premium', 'corretiva', 'pendente'),
(8, 'Filtro', 100.00, '2026-02-27', 'Auto Center', 'preventiva', 'concluida'),
(9, 'Óleo', 180.00, '2026-03-01', 'Carlos Mecânico', 'preventiva', 'concluida'),
(10, 'Elétrica', 400.00, '2026-03-03', 'EletricCar', 'corretiva', 'pendente');

-- verificar se tem placas duplicadas
SELECT placa, COUNT(*) 
FROM veiculo
GROUP BY placa
HAVING COUNT(*) > 1;

-- simulação que o carro foi alugado
UPDATE veiculo
SET status = 'alugado'
WHERE id_veiculo = 1;

 -- o pagamento foi concluido
UPDATE pagamento
SET status = 'concluido'
WHERE id_aluguel = 3;

select * from pagamento;

SELECT status, COUNT(*) AS total_clientes
FROM cliente
GROUP BY status;

SELECT endereco, COUNT(*) AS total_por_rua
FROM cliente
GROUP BY endereco;

SELECT cargo, AVG(salario) AS media_salarial
FROM funcionario
GROUP BY cargo;

SELECT status, COUNT(*) AS total_funcionarios
FROM funcionario
GROUP BY status;

SELECT status, COUNT(*) AS total
FROM veiculo
GROUP BY status;

SELECT cor, AVG(valor_diaria) AS media_valor
FROM veiculo
GROUP BY cor;

SELECT status, COUNT(*) AS total
FROM aluguel
GROUP BY status;

SELECT id_veiculo, SUM(valor_total) AS faturamento
FROM aluguel
GROUP BY id_veiculo;

SELECT status, COUNT(*) AS total
FROM pagamento
GROUP BY status;

SELECT metodo, SUM(valor) AS total_recebido
FROM pagamento
GROUP BY metodo;

SELECT tipo, COUNT(*) AS total
FROM manutencao
GROUP BY tipo;

SELECT status, SUM(custo) AS custo_total
FROM manutencao
GROUP BY status;

--  Fazendo conusltas por join
SELECT c.nome, a.id_aluguel, a.status
FROM cliente c
INNER JOIN aluguel a ON c.id_cliente = a.id_cliente;

SELECT a.id_aluguel, v.modelo, v.placa
FROM aluguel a
INNER JOIN veiculo v ON a.id_veiculo = v.id_veiculo;

SELECT a.id_aluguel, p.valor, p.status
FROM aluguel a
LEFT JOIN pagamento p ON a.id_aluguel = p.id_aluguel;