SELECT id_status FROM tb_rh_ped_desligamento
WHERE id_ped_deslig = 1930
;

UPDATE tb_rh_ped_desligamento SET id_status = 3 
WHERE (id_ped_deslig = 1930)
;

-- =============================================================================
-- Tabela de Status
-- =============================================================================
--
-- ID | Descrição                 | Seq. Empresa | Seq. Func.
-- ---+---------------------------+--------------+----------
--  1 | EM ANÁLISE                |      1       |     1
--  2 | FINALIZADO                |      8       |     8
--  3 | ARQUIVADO                 |      9       |     9
--  4 | PARECER SGI               |      4       |     5
--  5 | PARECER RH                |      3       |     4
--  6 | PARECER DIRETORIA         |      5       |    10
--  7 | AGUARDANDO CARTA          |      6       |     6
--  8 | ESPERA DE CHECKLIST       |      7       |     7
--  9 | PARECER GESTOR IMEDIATO   |     10       |     2
-- 10 | PARECER GESTOR UNIDADE    |      2       |     3

-- =============================================================================
-- Tabela de Acessos (Central de Desligamento)
-- =============================================================================
--
-- ID Grupo | Acesso
-- ---------+---------------------------------------
--       84 | RH - GESTOR IMEDIATO
--      103 | DP - DESLIGAMENTO - DP- UNIDADE
--      104 | DP - DESLIGAMENTO - SEDE
--      105 | RH - DESLIGAMENTO - GESTOR DE UNIDADE
--      141 | DIRETORIA
--      153 | DP - GESTOR DO DEPARTAMENTO
--      158 | DP - BONIFICACAO SGI ADM
--      159 | DP - BONIFICACAO SGI OP
--      175 | RH - DESLIGAMENTO - UNIDADE