INSERT INTO cliente (idCliente, nome, telefone, endereco) VALUES
(1, 'Ana Silva', '1199991001', 'Rua das Flores, 101'),
(2, 'Bruno Costa', '1199991002', 'Av. Brasil, 202'),
(3, 'Carla Souza', '1199991003', 'Rua A, 303'),
(4, 'Daniel Rocha', '1199991004', 'Rua B, 404'),
(5, 'Eduarda Lima', '1199991005', 'Rua C, 505'),
(6, 'Felipe Martins', '1199991006', 'Rua D, 606'),
(7, 'Gabriela Torres', '1199991007', 'Rua E, 707'),
(8, 'Henrique Alves', '1199991008', 'Rua F, 808'),
(9, 'Isabela Mendes', '1199991009', 'Rua G, 909'),
(10, 'João Pereira', '1199991010', 'Rua H, 1010');

INSERT INTO veiculo (placa, modelo, marca, ano, idCliente) VALUES
('ABC1234', 'Civic', 'Honda', '2018', 1),
('DEF5678', 'Corolla', 'Toyota', '2019', 2),
('GHI9012', 'Gol', 'Volkswagen', '2017', 3),
('JKL3456', 'Onix', 'Chevrolet', '2020', 4),
('MNO7890', 'HB20', 'Hyundai', '2021', 5),
('PQR2345', 'Fiesta', 'Ford', '2016', 6),
('STU6789', 'Sandero', 'Renault', '2015', 7),
('VWX0123', 'Cruze', 'Chevrolet', '2022', 8),
('YZA4567', 'Ka', 'Ford', '2014', 9),
('BCD8901', 'Compass', 'Jeep', '2023', 10);

INSERT INTO mecanico (idMecanico, nome, endereco, especialidade) VALUES
(1, 'Carlos Mecânico', 'Rua X, 1', 'Motor'),
(2, 'Luciana Técnica', 'Rua Y, 2', 'Suspensão'),
(3, 'Rafael Auto', 'Rua Z, 3', 'Freios'),
(4, 'Mariana Pro', 'Rua W, 4', 'Elétrica'),
(5, 'Tiago Turbo', 'Rua V, 5', 'Transmissão'),
(6, 'Fernanda Fina', 'Rua U, 6', 'Pintura'),
(7, 'Gustavo Gear', 'Rua T, 7', 'Diagnóstico'),
(8, 'Patrícia Power', 'Rua S, 8', 'Motor'),
(9, 'Rodrigo Race', 'Rua R, 9', 'Suspensão'),
(10, 'Juliana Jet', 'Rua Q, 10', 'Freios');

INSERT INTO equipe (idEquipe, nome) VALUES
(1, 'Equipe Alfa'),
(2, 'Equipe Beta'),
(3, 'Equipe Gama'),
(4, 'Equipe Delta'),
(5, 'Equipe Épsilon'),
(6, 'Equipe Zeta'),
(7, 'Equipe Eta'),
(8, 'Equipe Teta'),
(9, 'Equipe Iota'),
(10, 'Equipe Kappa');

INSERT INTO ordem_servico (idOrdem_de_servico, numero, dataEmissao, valor, status, data_conclusao, veiculo_placa, idEquipe) VALUES
(1, 'OS001', '2025-10-01', 500.00, 'Aberta', NULL, 'ABC1234', 1),
(2, 'OS002', '2025-10-02', 300.00, 'Concluída', '2025-10-03', 'DEF5678', 2),
(3, 'OS003', '2025-10-03', 450.00, 'Aberta', NULL, 'GHI9012', 3),
(4, 'OS004', '2025-10-04', 600.00, 'Concluída', '2025-10-05', 'JKL3456', 4),
(5, 'OS005', '2025-10-05', 250.00, 'Aberta', NULL, 'MNO7890', 5),
(6, 'OS006', '2025-10-06', 700.00, 'Concluída', '2025-10-07', 'PQR2345', 6),
(7, 'OS007', '2025-10-07', 350.00, 'Aberta', NULL, 'STU6789', 7),
(8, 'OS008', '2025-10-08', 800.00, 'Concluída', '2025-10-09', 'VWX0123', 8),
(9, 'OS009', '2025-10-09', 400.00, 'Aberta', NULL, 'YZA4567', 9),
(10, 'OS010', '2025-10-10', 550.00, 'Concluída', '2025-10-11', 'BCD8901', 10);

INSERT INTO peca (idPeca, descricao, valor_unitario) VALUES
(1, 'Filtro de óleo', 35.00),
(2, 'Pastilha de freio', 120.00),
(3, 'Correia dentada', 90.00),
(4, 'Amortecedor dianteiro', 250.00),
(5, 'Bateria 60Ah', 400.00),
(6, 'Velas de ignição', 60.00),
(7, 'Radiador', 300.00),
(8, 'Sensor de temperatura', 80.00),
(9, 'Disco de freio', 150.00),
(10, 'Farol dianteiro', 200.00);

INSERT INTO equipe_mecanico (idMecanico, idEquipe) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO ordem_de_servico_has_peca (idOrdem_de_servico, idPeca) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);