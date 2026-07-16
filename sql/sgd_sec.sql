SELECT *
FROM sec_users AS A
INNER JOIN tb_oper_pessoa AS B
    ON A.idtb_oper_pessoa = B.idtb_oper_pessoa
WHERE B.status = 2
  AND A.active = 'Y'
; -- verificar se tem algum login ativo vinculado a colaborador inativo;