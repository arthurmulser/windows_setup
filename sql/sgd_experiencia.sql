SET SQL_SAFE_UPDATES = 0;

UPDATE tb_rh_experiencia 
SET 
    login_rh = 'raillany.silva'
WHERE
    idtb_rh_experiencia IN (SELECT 
            idtb_rh_experiencia
        FROM
            dolpenge_dolpengenharia.tb_rh_experiencia
        WHERE
            login_rh = 'natallia.prado'
                AND status <> 5); -- trocar o avaliador rh do periodo de experiência;