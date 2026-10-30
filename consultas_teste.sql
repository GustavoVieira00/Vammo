
-- ============================================
-- VAMMO - CONSULTAS DO BANCO DE DADOS
-- ============================================

-- SELECIONAR BANCO DE DADOS
USE vammo_at2;

-- ============================================
-- 1. VISUALIZAR TODAS AS TABELAS
-- ============================================

SHOW TABLES;

-- ============================================
-- 2. CLIENTES
-- ============================================

SELECT * FROM clientes;

-- ============================================
-- 3. FUNCIONARIOS
-- ============================================

SELECT * FROM funcionarios;

-- ============================================
-- 4. MOTOS
-- ============================================

SELECT * FROM motos;

-- ============================================
-- 5. ALUGUEIS
-- ============================================

SELECT * FROM alugueis;

-- ============================================
-- 6. MANUTENCAO
-- ============================================

SELECT * FROM manutencao;

-- ============================================
-- 7. ESTOQUE
-- ============================================

SELECT * FROM estoque;

-- ============================================
-- 8. ASSINATURAS
-- ============================================

SELECT * FROM assinaturas;

-- ============================================
-- 9. PAGAMENTOS
-- ============================================

SELECT * FROM pagamentos;

-- ============================================
-- 10. COBRANCAS SEMANAIS
-- ============================================

SELECT * FROM cobrancas_semanais;

-- ============================================
-- 11. CAUCOES
-- ============================================

SELECT * FROM caucoes;

-- ============================================
-- 12. PARCELAS DA CAUCAO
-- ============================================

SELECT * FROM parcelas_caucao;

-- ============================================
-- 13. GUINCHOS
-- ============================================

SELECT * FROM guinchos;

-- ============================================
-- 14. VISUALIZACOES DO SISTEMA
-- ============================================

SELECT * FROM vw_estoque_motos;

SELECT * FROM vw_motos_com_clientes;

SELECT * FROM vw_guinchos_resumo;

-- ============================================
-- 15. MOTOS DISPONIVEIS
-- ============================================

SELECT *
FROM motos
WHERE status = 'DISPONIVEL';

-- ============================================
-- 16. MOTOS POR COR
-- ============================================

SELECT cor, COUNT(*) AS quantidade
FROM motos
GROUP BY cor;

-- ============================================
-- 17. MOTOS ADICIONADAS
-- ============================================

SELECT id_moto, modelo, cor, status
FROM motos
WHERE id_moto BETWEEN 11 AND 25
ORDER BY id_moto;

-- ============================================
-- 18. QUANTIDADE TOTAL DE CLIENTES
-- ============================================

SELECT COUNT(*) AS total_clientes
FROM clientes;

-- ============================================
-- 19. QUANTIDADE TOTAL DE FUNCIONARIOS
-- ============================================

SELECT COUNT(*) AS total_funcionarios
FROM funcionarios;

-- ============================================
-- 20. QUANTIDADE TOTAL DE MOTOS
-- ============================================

SELECT COUNT(*) AS total_motos
FROM motos;

-- ============================================
-- 21. QUANTIDADE DE ASSINATURAS
-- ============================================

SELECT COUNT(*) AS total_assinaturas
FROM assinaturas;

-- ============================================
-- 22. PAGAMENTOS VIA PIX
-- ============================================

SELECT *
FROM pagamentos
WHERE forma_pagamento = 'PIX';

-- ============================================
-- 23. PAGAMENTOS VIA MERCADO PAGO
-- ============================================

SELECT *
FROM pagamentos
WHERE forma_pagamento = 'MERCADO_PAGO';

-- ============================================
-- 24. ESTRUTURA DAS TABELAS
-- ============================================

DESCRIBE clientes;

DESCRIBE funcionarios;

DESCRIBE motos;

DESCRIBE alugueis;

DESCRIBE manutencao;

DESCRIBE estoque;

DESCRIBE assinaturas;

DESCRIBE pagamentos;

DESCRIBE cobrancas_semanais;

DESCRIBE caucoes;

DESCRIBE parcelas_caucao;

DESCRIBE guinchos;
