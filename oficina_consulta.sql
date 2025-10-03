-- Verificar clientes e seus veículos
SELECT c.nome AS cliente, v.placa, v.modelo, v.marca
FROM cliente c
JOIN veiculo v ON c.idCliente = v.idCliente;

-- Verificar ordens de serviço com dados do veículo e equipe
SELECT os.numero, os.dataEmissao, os.status, v.modelo, e.nome AS equipe
FROM ordem_servico os
JOIN veiculo v ON os.veiculo_placa = v.placa
JOIN equipe e ON os.idEquipe = e.idEquipe;

-- Verificar peças utilizadas em cada ordem de serviç
SELECT os.numero, p.descricao, p.valor_unitario
FROM ordem_servico os
JOIN ordem_de_servico_has_peca osp ON os.idOrdem_de_servico = osp.idOrdem_de_servico
JOIN peca p ON osp.idPeca = p.idPeca;

-- Verificar quais mecânicos estão em cada equipe
SELECT e.nome AS equipe, m.nome AS mecanico, m.especialidade
FROM equipe e
JOIN equipe_mecanico em ON e.idEquipe = em.idEquipe
JOIN mecanico m ON em.idMecanico = m.idMecanico;

-- Contar quantas ordens de serviço cada equipe realizou
SELECT e.nome AS equipe, COUNT(os.idOrdem_de_servico) AS total_ordens
FROM equipe e
LEFT JOIN ordem_servico os ON e.idEquipe = os.idEquipe
GROUP BY e.idEquipe;

-- Verificar valor total de peças por ordem de serviço
SELECT os.numero, SUM(p.valor_unitario) AS total_pecas
FROM ordem_servico os
JOIN ordem_de_servico_has_peca osp ON os.idOrdem_de_servico = osp.idOrdem_de_servico
JOIN peca p ON osp.idPeca = p.idPeca
GROUP BY os.idOrdem_de_servico;