select * from tb_produtos_enel
where id_sankhya = 164;
 
select * from tb_produtos_enel_rastro
where idtb_produtos_enel = 2502 
and cod = '4461885';
 
select * from tb_estoque_entidade
where idtb_estoque_entidade = 387;
 
select * from tb_produtos_enel_rastro_mov
where idtb_produtos_enel_rastro = 33594;
 
select * from tb_produtos_enel_rastro_check
where idtb_produtos_enel_rastro = 33594;
 
select * from tb_produtos_enel_manifesto_itens 
where idtb_produtos_enel_manifesto_itens in ('765025', '765026', '951542', '979460');

select * from tb_oper_pessoa where nome like '%ODAIR FERNANDES FRIAS%';