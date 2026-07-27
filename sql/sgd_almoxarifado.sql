select * from tb_produtos_enel
where id_sankhya = 164
;
 
select * from tb_produtos_enel_rastro
where idtb_produtos_enel = 2502 
and cod = '4461885'
;
 
select * from tb_estoque_entidade
where idtb_estoque_entidade = 3565
;
 
select * from tb_produtos_enel_rastro_mov
where idtb_produtos_enel_rastro = 33594
;
 
select * from tb_produtos_enel_rastro_check
where idtb_produtos_enel_rastro = 33594
;
 
select * from tb_produtos_enel_manifesto_itens 
where idtb_produtos_enel_manifesto_itens in ('765025', '765026', '951542', '979460')
;

select * from tb_oper_pessoa 
where nome like '%MARCOS ANTONIO DA SILVA SEVERO%'
or nome like '%THALLES EDUARDO DE ANDRADE%'
or nome like '%RICHARD ANTHONY PEREIRA%'
or nome like '%CLAUDIO HENRICH DE OLIVEIRA ALVES%'
or nome like '%ALMIR JOSE ALVES DA SILVA SOBRINHO%'
or nome like '%DINIWEY LOPES DA SILVA%'
or nome like '%WENDERSON PEREIRA DA SILVA%'
or nome like '%MARCIO LAGOS DE CARVALHO%'
;

UPDATE tb_frota_veiculo SET status = 1 
WHERE (idtb_Veiculo = 603)
; -- atualizar status da frota;


UPDATE tb_produtos_enel_rastro AS a
        INNER JOIN
    tb_estoque_entidade AS b ON b.idtb_estoque_entidade = a.idtb_estoque_entidade
        INNER JOIN
    tb_oper_pessoa AS c ON c.idtb_oper_pessoa = b.id_estrangeiro
        INNER JOIN
    tb_produtos_enel AS d ON d.idtb_produtos_enel = a.idtb_produtos_enel 
SET 
    a.idtb_estoque_entidade = 519
WHERE
    a.esta_em_mov NOT IN (1) AND b.tipo = 4
        AND c.status = 2
        AND c.idtb_oper_base NOT IN (8 , 10, 11)
; -- colocar rastros no saldo da rota;

 

 

 

 

 