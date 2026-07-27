23:23:14	ALTER TABLE tb_animais ADD CONSTRAINT tb_animais_tbfk_3 FOREIGN KEY (idtb_empresas) REFERENCES tb_empresas(idtb_empresas)	37 row(s) affected Records: 37  Duplicates: 0  Warnings: 0	0.251 sec

23:23:05	ALTER TABLE tb_empresas     ADD CONSTRAINT tb_empresas_cnpj_unique     UNIQUE (cnpj)	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.204 sec

23:23:00	ALTER TABLE tb_empresas     DROP INDEX cnpj_UNIQUE	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.221 sec

23:22:54	ALTER TABLE tb_empresas     MODIFY COLUMN login_update VARCHAR(64) DEFAULT NULL	3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0	0.308 sec

23:22:46	ALTER TABLE tb_empresas     MODIFY COLUMN login_insert VARCHAR(64) DEFAULT NULL	3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0	0.307 sec

23:22:41	ALTER TABLE tb_empresas     MODIFY COLUMN idtb_ativo TINYINT(1) NOT NULL DEFAULT 1	3 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release. Records: 3  Duplicates: 0  Warnings: 1	0.309 sec

23:22:36	ALTER TABLE tb_empresas     MODIFY COLUMN idtb_empresas BIGINT UNSIGNED NOT NULL AUTO_INCREMENT	3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0	0.308 sec

23:22:31	ALTER TABLE tb_animais MODIFY idtb_empresas BIGINT UNSIGNED NOT NULL	37 row(s) affected Records: 37  Duplicates: 0  Warnings: 0	0.306 sec

23:22:26	ALTER TABLE tb_animais DROP FOREIGN KEY tb_animais_tbfk_3	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.204 sec

















--

ALTER TABLE tb_animais
DROP FOREIGN KEY tb_animais_tbfk_3;

ALTER TABLE tb_animais
MODIFY idtb_empresas BIGINT UNSIGNED NOT NULL;

ALTER TABLE tb_empresas
    MODIFY COLUMN idtb_empresas BIGINT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_empresas
    MODIFY COLUMN idtb_ativo TINYINT(1) NOT NULL DEFAULT 1;

ALTER TABLE tb_empresas
    MODIFY COLUMN login_insert VARCHAR(64) DEFAULT NULL;

ALTER TABLE tb_empresas
    MODIFY COLUMN login_update VARCHAR(64) DEFAULT NULL;

ALTER TABLE tb_empresas
    DROP INDEX cnpj_UNIQUE;

ALTER TABLE tb_empresas
    ADD CONSTRAINT tb_empresas_cnpj_unique
    UNIQUE (cnpj);

ALTER TABLE tb_animais
ADD CONSTRAINT tb_animais_tbfk_3
FOREIGN KEY (idtb_empresas)
REFERENCES tb_empresas(idtb_empresas);

-- 20260726;