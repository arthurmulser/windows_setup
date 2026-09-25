UPDATE tb_produtos_enel_laudo AS z 
SET 
    z.idtb_empresa = (SELECT 
            c.idtb_empresa
        FROM
            tb_produtos_enel_rastro AS a
                INNER JOIN
            tb_estoque_entidade AS b ON b.idtb_estoque_entidade = a.idtb_estoque_entidade
                INNER JOIN
            tb_oper_base AS c ON c.idtb_oper_base = b.idtb_oper_base
        WHERE
            a.idtb_produtos_enel_rastro = z.idtb_produtos_enel_rastro)
WHERE
    z.idtb_empresa = 0; -- atualizar coluna empresa dos laudos de acordo com a empresa atual do produto rastreável;