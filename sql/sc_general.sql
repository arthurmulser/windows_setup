14:04:26	INSERT INTO tb_entidades (     idtb_empresas,     idtb_entidades_tipos,     nome,     idtb_ativo,     dt_insert,     login_insert ) VALUES     (6, 1, '79 || ALEXANDRE BALIEIRO GAMA', 1, NOW(), 'admin'),     (6, 1, '58 || AUGUSTO VENANCIO DA SILVA SANTOS', 1, NOW(), 'admin'),     (6, 1, '68 || ADAUTO LIMA MARINHO', 1, NOW(), 'admin'),     (6, 1, '50 || ARLENE GOMES DA CUNHA', 1, NOW(), 'admin'),     (6, 1, '71 || BRUNO OLIVEIRA', 1, NOW(), 'admin'),     (6, 1, '84 || CARLOS EDUARDO SOARES SILVA', 1, NOW(), 'admin'),     (6, 1, '38 || CLEUVAN CARVALHO DA SILVA', 1, NOW(), 'admin'),     (6, 1, '88 || CLEOMAR DE LIMA RODRIGUES', 1, NOW(), 'admin'),     (6, 1, '16 || CLODOALDO ALVES', 1, NOW(), 'admin'),     (6, 1, '03 || EDGAR RIBEIRO DE SOUZA', 1, NOW(), 'admin'),     (6, 1, '57 || ELIO PEREIRA ALVES', 1, NOW(), 'admin'),     (6, 1, '70 || FEUS BARBOSA DE SOUSA', 1, NOW(), 'admin'),     (6, 1, '75 || GABRYEL ALVES DE OLIVEIRA', 1, NOW(), 'admin'),     (6, 1, '42 || GUIBSON SOUTO DA SILVA', 1, NOW(), 'admin'),     (6, 1, '65 || GUIOMAR PEREIRA DA SILVA', 1, NOW(), 'admin'),     (6, 1, '81 || JANIUSAN CRUZ DA SILVA', 1, NOW(), 'admin'),     (6, 1, '33 || JEFFERSON XAVIER SANTOS', 1, NOW(), 'admin'),     (6, 1, '83 || JOSE PEREIRA ALVES', 1, NOW(), 'admin'),     (6, 1, '27 || JOSE AZEVEDO PEREIRA JUNIOR', 1, NOW(), 'admin'),     (6, 1, '28 || JOSIMAR ARAUJO CABRAL', 1, NOW(), 'admin'),     (6, 1, '40 || JOAO ANTONIO PEREIRA DA SILVA', 1, NOW(), 'admin'),     (6, 1, '59 || LUCAS ALVES LIMA', 1, NOW(), 'admin'),     (6, 1, '82 || LUCIO DOS SANTOS DIAS', 1, NOW(), 'admin'),     (6, 1, '26 || LUCINEY ALMEIDA DE BRITO', 1, NOW(), 'admin'),     (6, 1, '87 || MARCO ANTONIO PEREIRA GUILHERME', 1, NOW(), 'admin'),     (6, 1, '22 || LEANDRO RAMOS DOS SANTOS MATOS', 1, NOW(), 'admin'),     (6, 1, '63 || NAIRTON VITORINO FERREIRA', 1, NOW(), 'admin'),     (6, 1, '54 || PEDRO LUCAS RODRIGUES AMORIM', 1, NOW(), 'admin'),     (6, 1, '34 || PEDRO FERREIRA CAMPOS', 1, NOW(), 'admin'),     (6, 1, '46 || RICARDO MOREIRA BARROS', 1, NOW(), 'admin'),     (6, 1, '77 || RODRIGO CARVALHO DA COSTA', 1, NOW(), 'admin'),     (6, 1, '39 || RENATO DA COSTA LEITE', 1, NOW(), 'admin'),     (6, 1, '35 || SAMOEL PINTO DE MELO', 1, NOW(), 'admin'),     (6, 1, '36 || VICTOR HUGO PEREIRA AIRES', 1, NOW(), 'admin'),     (6, 1, '72 || WANDERSON FERREIRA CARDEAL', 1, NOW(), 'admin'),     (6, 1, '86 || WASHINGTON LUIZ DE SOUZA OLIVEIRA', 1, NOW(), 'admin'),     (6, 1, '74 || ZERONILDE FRANCISCO BISPO', 1, NOW(), 'admin'),     (6, 1, '85 || ISABELLA WARDA ASSENCIO REIS', 1, NOW(), 'admin'),     (6, 1, '49 || DJUNIOR LUCIO RAMALHO', 1, NOW(), 'admin')	39 row(s) affected Records: 39  Duplicates: 0  Warnings: 0	0.231 sec

11:12:37	ALTER TABLE flutter_log   ADD COLUMN status_code INT NULL AFTER api_version,   ADD INDEX flutter_log_status_code_dt_evento_index (status_code, dt_evento)	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.298 sec

14:43:53	ALTER TABLE flutter_log  DROP FOREIGN KEY flutter_log_idflutter_log_token_foreign	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.285 sec

22:09:50	ALTER TABLE `flutter_log`  ADD CONSTRAINT `flutter_log_idflutter_log_token_foreign`  FOREIGN KEY (`idflutter_log_token`) REFERENCES `flutter_log` (`idflutter_log`)  ON DELETE RESTRICT	361 row(s) affected Records: 361  Duplicates: 0  Warnings: 0	0.272 sec

22:09:50	ALTER TABLE `flutter_log`  ADD KEY `flutter_log_idflutter_log_token_index` (`idflutter_log_token`)	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.182 sec

22:09:50	ALTER TABLE `flutter_log`  ADD COLUMN `idflutter_log_token` BIGINT UNSIGNED DEFAULT NULL AFTER `idflutter_log`	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.189 sec

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