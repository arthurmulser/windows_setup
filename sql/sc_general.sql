10:03:01	CREATE TABLE `tb_turnos` (   `idtb_turnos` bigint unsigned NOT NULL AUTO_INCREMENT,   `idflutter_log` bigint unsigned DEFAULT NULL,   `idtb_empresas` bigint unsigned NOT NULL,   `idtb_entidades` bigint unsigned NOT NULL,   `idtb_equipes` bigint unsigned NOT NULL,   `idtb_turnos_tipos` bigint unsigned NOT NULL,   `km_inicial` int DEFAULT NULL,   `km_final` int DEFAULT NULL,   `version` int NOT NULL,   `dt_inicio` datetime NOT NULL,   `dt_fim` datetime DEFAULT NULL,   `idtb_ativo` tinyint(1) NOT NULL DEFAULT '1',   `dt_insert` datetime NOT NULL,   `login_insert` varchar(64) NOT NULL,   `dt_update` datetime DEFAULT NULL,   `login_update` varchar(64) DEFAULT NULL,   PRIMARY KEY (`idtb_turnos`),   KEY `tb_turnos_idflutter_log_index` (`idflutter_log`),   CONSTRAINT `tb_turnos_idflutter_log_foreign` FOREIGN KEY (`idflutter_log`) REFERENCES `flutter_log` (`idflutter_log`) ON DELETE RESTRICT ) ENGINE=InnoDB	0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.	0.309 sec

10:03:00	CREATE TABLE `tb_equipes` (   `idtb_equipes` bigint unsigned NOT NULL AUTO_INCREMENT,   `idtb_empresas` bigint unsigned NOT NULL,   `idtb_equipes_tipos` bigint unsigned NOT NULL,   `nome` varchar(64) NOT NULL,   `idtb_ativo` tinyint(1) NOT NULL DEFAULT '1',   `dt_insert` datetime NOT NULL,   `login_insert` varchar(64) NOT NULL,   `dt_update` datetime DEFAULT NULL,   `login_update` varchar(64) DEFAULT NULL,   PRIMARY KEY (`idtb_equipes`),   UNIQUE KEY `uq_idtb_empresas_plus_nome` (`idtb_empresas`,`nome`),   KEY `tb_equipes_idtb_empresas_index` (`idtb_empresas`),   KEY `tb_equipes_idtb_equipes_tipos_index` (`idtb_equipes_tipos`),   CONSTRAINT `tb_equipes_idtb_empresas_foreign` FOREIGN KEY (`idtb_empresas`) REFERENCES `tb_empresas` (`idtb_empresas`) ON DELETE RESTRICT,   CONSTRAINT `tb_equipes_idtb_equipes_tipos_foreign` FOREIGN KEY (`idtb_equipes_tipos`) REFERENCES `tb_equipes_tipos` (`idtb_equipes_tipos`) ON DELETE RESTRICT ) ENGINE=InnoDB	0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.	0.306 sec

10:03:00	CREATE TABLE `tb_equipes_tipos` (   `idtb_equipes_tipos` bigint unsigned NOT NULL AUTO_INCREMENT,   `nome` varchar(64) NOT NULL,   `idtb_ativo` int NOT NULL DEFAULT '1',   `dt_insert` datetime NOT NULL,   `login_insert` varchar(64) NOT NULL,   `dt_update` datetime DEFAULT NULL,   `login_update` varchar(64) DEFAULT NULL,   PRIMARY KEY (`idtb_equipes_tipos`),   UNIQUE KEY `tb_equipes_tipos_nome_unique` (`nome`) ) ENGINE=InnoDB	0 row(s) affected	0.205 sec

10:02:59	CREATE TABLE `tb_entidades` (   `idtb_entidades` bigint unsigned NOT NULL AUTO_INCREMENT,   `idtb_empresas` bigint unsigned NOT NULL,   `idtb_entidades_tipos` bigint unsigned NOT NULL,   `nome` varchar(256) NOT NULL,   `idtb_ativo` tinyint(1) NOT NULL DEFAULT '1',   `dt_insert` datetime NOT NULL,   `login_insert` varchar(64) NOT NULL,   `dt_update` datetime DEFAULT NULL,   `login_update` varchar(64) DEFAULT NULL,   PRIMARY KEY (`idtb_entidades`),   KEY `tb_entidades_idtb_empresas_index` (`idtb_empresas`),   KEY `tb_entidades_idtb_entidades_tipos_index` (`idtb_entidades_tipos`),   CONSTRAINT `tb_entidades_idtb_empresas_foreign` FOREIGN KEY (`idtb_empresas`) REFERENCES `tb_empresas` (`idtb_empresas`) ON DELETE RESTRICT,   CONSTRAINT `tb_entidades_idtb_entidades_tipos_foreign` FOREIGN KEY (`idtb_entidades_tipos`) REFERENCES `tb_entidades_tipos` (`idtb_entidades_tipos`) ON DELETE RESTRICT ) ENGINE=InnoDB	0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.	0.215 sec

10:02:59	CREATE TABLE `tb_entidades_tipos` (   `idtb_entidades_tipos` bigint unsigned NOT NULL AUTO_INCREMENT,   `nome` varchar(64) NOT NULL,   `idtb_ativo` tinyint(1) NOT NULL DEFAULT '1',   `dt_insert` datetime NOT NULL,   `login_insert` varchar(64) NOT NULL,   `dt_update` datetime DEFAULT NULL,   `login_update` varchar(64) DEFAULT NULL,   PRIMARY KEY (`idtb_entidades_tipos`),   UNIQUE KEY `tb_entidades_tipos_nome_unique` (`nome`) ) ENGINE=InnoDB	0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.	0.204 sec

10:02:59	CREATE TABLE `tb_turnos_tipos` (     `idtb_turnos_tipos` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,     `nome` VARCHAR(64) NOT NULL,     `idtb_ativo` TINYINT(1) NOT NULL DEFAULT '1',     `dt_insert` DATETIME NOT NULL,     `login_insert` VARCHAR(64) NOT NULL,     `dt_update` DATETIME DEFAULT NULL,     `login_update` VARCHAR(64) DEFAULT NULL,     PRIMARY KEY (`idtb_turnos_tipos`),     UNIQUE KEY `tb_turnos_tipos_nome_unique` (`nome`) )  ENGINE=INNODB	0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.	0.296 sec

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