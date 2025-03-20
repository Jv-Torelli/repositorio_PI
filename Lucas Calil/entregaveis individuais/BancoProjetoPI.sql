CREATE DATABASE ProjetoTi;

USE ProjetoTi;

-- Tabela de usuários
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    dt_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Usuarios (nome, email, senha, cargo) VALUES
('Ana Souza', 'ana@email.com', 'senha456', 'Técnico'),
('Carlos Mendes', 'carlos@email.com', 'senha789', 'Analista'),
('Mariana Lima', 'mariana@email.com', 'senhaabc', 'Gestor'),
('Rafael Torres', 'rafael@email.com', 'senhadef', 'Supervisor');

-- Tabela de alertas
CREATE TABLE Alertas (
    id_alerta INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    nivel INT CHECK (nivel BETWEEN 1 AND 5),
    dt_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Alertas (tipo, descricao, nivel) VALUES
('Temperatura', 'Temperatura acima do limite seguro.', 4),
('Umidade', 'Umidade muito baixa na área monitorada.', 3),
('Falha no Sensor', 'Sensor parou de enviar dados.', 5),
('Bateria Baixa', 'Bateria do sensor abaixo de 20%.', 2),
('Conexão Perdida', 'Perda de conexão com o sensor remoto.', 4);

-- Tabela de Manutenções
CREATE TABLE Manutencoes (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    responsavel VARCHAR(100) NOT NULL,
    dt_manutencao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Manutencoes (descricao, responsavel) VALUES
('Substituição da bateria do sensor.', 'Ana Souza'),
('Recalibração do sensor de temperatura.', 'Carlos Mendes'),
('Verificação do módulo de conexão.', 'Mariana Lima'),
('Troca do sensor por defeito técnico.', 'Lucas Laurín'),
('Atualização de firmware do sensor.', 'Rafael Torres');

