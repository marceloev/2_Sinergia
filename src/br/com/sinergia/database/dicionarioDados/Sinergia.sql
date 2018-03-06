--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Janeiro-17-2018   
--------------------------------------------------------
DROP TABLE "SINERGIA"."TGFGRU";
DROP TABLE "SINERGIA"."TGFLEM";
DROP TABLE "SINERGIA"."TGFLEM_OLD";
DROP TABLE "SINERGIA"."TGFLOC";
DROP TABLE "SINERGIA"."TGFPRO";
DROP TABLE "SINERGIA"."TRIMSG";
DROP TABLE "SINERGIA"."TSIARQ";
DROP TABLE "SINERGIA"."TSIEMP";
DROP TABLE "SINERGIA"."TSIPAR";
DROP TABLE "SINERGIA"."TSIPER";
DROP TABLE "SINERGIA"."TSIREG";
DROP TABLE "SINERGIA"."TSISES";
DROP TABLE "SINERGIA"."TSITEL";
DROP TABLE "SINERGIA"."TSIUSU";
DROP FUNCTION "SINERGIA"."GET_COD";
DROP FUNCTION "SINERGIA"."GET_CODREG";
DROP FUNCTION "SINERGIA"."GET_CODSESSAO";
DROP FUNCTION "SINERGIA"."GET_TSIPAR_T";
DROP FUNCTION "SINERGIA"."MD5";
--------------------------------------------------------
--  DDL for Table TGFGRU
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TGFGRU" 
   (	"CODGRUPOPROD" NUMBER(10,0), 
	"DESCRGRUPOPROD" VARCHAR2(30 BYTE), 
	"CODGRUPAI" NUMBER(10,0), 
	"ANALITICO" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"IMAGEM" BLOB, 
	"VALEST" VARCHAR2(1 BYTE) DEFAULT 'A'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" 
 LOB ("IMAGEM") STORE AS BASICFILE (
  TABLESPACE "SINERGIA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TGFLEM
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TGFLEM" 
   (	"CODUSU" NUMBER(*,0), 
	"DHALTER" DATE, 
	"LEMBRETE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TGFLEM_OLD
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TGFLEM_OLD" 
   (	"CODUSU" NUMBER, 
	"DHEXCLUSAO" DATE, 
	"DHALTER" DATE, 
	"LEMBRETE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TGFLOC
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TGFLOC" 
   (	"CODLOCAL" NUMBER(*,0), 
	"DESCRLOCAL" VARCHAR2(60 BYTE), 
	"LOCALPOREMP" VARCHAR2(1 BYTE) DEFAULT 'S'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TGFPRO
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TGFPRO" 
   (	"CODPROD" NUMBER(*,0), 
	"DESCRPROD" VARCHAR2(40 BYTE), 
	"COMPLEMENTO" VARCHAR2(80 BYTE), 
	"CARACTERISTICAS" VARCHAR2(4000 BYTE), 
	"ATIVO" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"CODGRUPOPROD" NUMBER(*,0), 
	"DHCRIACAO" DATE DEFAULT SYSDATE, 
	"DHALTER" DATE, 
	"CODUSUALTER" NUMBER(*,0), 
	"CODBARRAS" NUMBER(20,0), 
	"REFERENCIA" VARCHAR2(20 BYTE), 
	"MARCA" VARCHAR2(20 BYTE), 
	"USOPROD" VARCHAR2(30 BYTE) DEFAULT 'Revenda', 
	"IMAGEM" BLOB, 
	"NCM" VARCHAR2(10 BYTE), 
	"DECCUSTO" NUMBER(5,0) DEFAULT 2, 
	"DECVLR" NUMBER(5,0) DEFAULT 2, 
	"DECQTD" NUMBER(5,0) DEFAULT 2, 
	"PERCOMGER" FLOAT(20) DEFAULT 0, 
	"PERCOMVEN" FLOAT(20) DEFAULT 0, 
	"DESCMAX" FLOAT(20), 
	"VENDAMIN" NUMBER(10,0) DEFAULT 0, 
	"VENDAMAX" NUMBER(10,0), 
	"PROMOCAO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ESTMIN" NUMBER(20,0) DEFAULT 0, 
	"ESTMAX" NUMBER(20,0), 
	"PERMCOMPRA" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"PERMVENDA" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"CODLOCAL" NUMBER(*,0) DEFAULT 0, 
	"PERMCONSUMO" VARCHAR2(1 BYTE) DEFAULT 'S'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" 
 LOB ("IMAGEM") STORE AS BASICFILE (
  TABLESPACE "SINERGIA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TRIMSG
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TRIMSG" 
   (	"CODMSG" NUMBER, 
	"CODUSU" NUMBER, 
	"VISUALIZADA" VARCHAR2(1 BYTE), 
	"MENSAGEM" VARCHAR2(4000 BYTE), 
	"PRIORIDADE" NUMBER(1,0) DEFAULT 3, 
	"DHALTER" DATE, 
	"TITULO" VARCHAR2(30 BYTE), 
	"DHVISUALIZADA" DATE, 
	"CODUSUREM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIARQ
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIARQ" 
   (	"CODUSU" NUMBER(*,0), 
	"ARQUIVO" VARCHAR2(30 BYTE), 
	"LISTA" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIEMP
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIEMP" 
   (	"CODEMP" NUMBER, 
	"RAZAOSOCIAL" VARCHAR2(60 BYTE), 
	"NOMEFANTASIA" VARCHAR2(60 BYTE), 
	"CNPJ" NUMBER(14,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIPAR
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIPAR" 
   (	"CHAVE" VARCHAR2(20 BYTE), 
	"CODUSU" NUMBER(*,0), 
	"DESCRICAO" VARCHAR2(40 BYTE), 
	"TIPO" VARCHAR2(1 BYTE) DEFAULT 'L', 
	"INTEIRO" NUMBER(10,0), 
	"LIGADO" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"LISTA" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIPER
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIPER" 
   (	"PERFIL" VARCHAR2(20 BYTE), 
	"TELA" VARCHAR2(30 BYTE), 
	"VISUALIZA" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"ALTERA" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"INSERI" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"EXCLUI" VARCHAR2(1 BYTE) DEFAULT 'S'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIREG
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIREG" 
   (	"CODUSU" NUMBER(*,0), 
	"CODSESSAO" NUMBER(*,0), 
	"DHACESSO" DATE, 
	"TELA" VARCHAR2(30 BYTE), 
	"CODREG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSISES
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSISES" 
   (	"CODSESSAO" NUMBER(*,0), 
	"CODUSU" NUMBER(*,0), 
	"DHLOGIN" DATE, 
	"DHLOGOUT" DATE, 
	"IPMAQ" VARCHAR2(15 BYTE), 
	"NOMEMAQ" VARCHAR2(60 BYTE), 
	"VERSAOEXEC" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSITEL
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSITEL" 
   (	"TELA" VARCHAR2(30 BYTE), 
	"CAMINHO" VARCHAR2(60 BYTE), 
	"MENU" VARCHAR2(20 BYTE), 
	"FRAME" VARCHAR2(1 BYTE), 
	"LOCALIZADOR" VARCHAR2(120 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Table TSIUSU
--------------------------------------------------------

  CREATE TABLE "SINERGIA"."TSIUSU" 
   (	"CODUSU" NUMBER(*,0), 
	"LOGIN" VARCHAR2(20 BYTE), 
	"NOME" VARCHAR2(60 BYTE), 
	"SENHA" VARCHAR2(60 BYTE), 
	"PERFIL" NUMBER DEFAULT 0, 
	"CODEMP" NUMBER(*,0) DEFAULT 0, 
	"ATIVO" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"FOTO" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" 
 LOB ("FOTO") STORE AS BASICFILE (
  TABLESPACE "SINERGIA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into SINERGIA.TGFGRU
SET DEFINE OFF;
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('0','Grupo de Produtos Padrão','-1','N','N');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('1','Alimentos Mabel','-1','S','A');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('2','Derivados de leite','-1','S','A');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('101','Rosquinhas','1','S','A');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('10101','Rosquinhas de coco','101','N','A');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('201','Leites de caixinha','2','S','A');
Insert into SINERGIA.TGFGRU (CODGRUPOPROD,DESCRGRUPOPROD,CODGRUPAI,ANALITICO,VALEST) values ('20101','Leites de caixinha 1L','201','N','A');
REM INSERTING into SINERGIA.TGFLEM
SET DEFINE OFF;
Insert into SINERGIA.TGFLEM (CODUSU,DHALTER,LEMBRETE) values ('0',to_date('31/12/17','DD/MM/RR'),null);
Insert into SINERGIA.TGFLEM (CODUSU,DHALTER,LEMBRETE) values ('1',to_date('17/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li><li><font face="Segoe UI">Atualizar os ícones da rotina de avisos (Visualizado com priordade e demais)</font></li><li><font face="Segoe UI">Verificar o porque de os Objetos dentro do TabPane não estarem sincronizando o tamanho do frame</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM (CODUSU,DHALTER,LEMBRETE) values ('2',to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p><font face="Segoe UI">"Não tem lembretes para demonstrar" Domingues, Marcelo.</font></p></body></html>');
Insert into SINERGIA.TGFLEM (CODUSU,DHALTER,LEMBRETE) values ('3',to_date('24/11/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"></body></html>');
REM INSERTING into SINERGIA.TGFLEM_OLD
SET DEFINE OFF;
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('23/11/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('31/12/17','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI"><strike>Estudar a rotina de lembretes</strike></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li><li><font face="Segoe UI">Atualizar os ícones da rotina de avisos (Visualizado priordade e demais)</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('03/01/18','DD/MM/RR'),to_date('31/12/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">Corrigir o width do panemenu (Sem bugar o Accordion)</font></li><li><font face="Segoe UI">Criar o toolbarpane igual o desenhado.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('03/01/18','DD/MM/RR'),to_date('03/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('03/01/18','DD/MM/RR'),to_date('03/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('03/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender colocar atalho (Tela de pesquisa, fechar aba CTRL+W, etc...</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('2',to_date('06/01/18','DD/MM/RR'),to_date('19/11/17','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p><font face="Segoe UI">teste</font></p><p><font face="Segoe UI">teste1</font></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('11/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('12/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li><li><font face="Segoe UI">Testar erro na Query da TRIMSG para parar 5 minutos.</font></li><li><font face="Segoe UI">Testar a rotina de QtdMsgNãoVisualizada</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('13/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>');
Insert into SINERGIA.TGFLEM_OLD (CODUSU,DHEXCLUSAO,DHALTER,LEMBRETE) values ('1',to_date('17/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li><li><font face="Segoe UI">Atualizar os ícones da rotina de avisos (Visualizado com priordade e demais)</font></li></ol><p></p></body></html>');
REM INSERTING into SINERGIA.TGFLOC
SET DEFINE OFF;
Insert into SINERGIA.TGFLOC (CODLOCAL,DESCRLOCAL,LOCALPOREMP) values ('0','Local Padrão','N');
Insert into SINERGIA.TGFLOC (CODLOCAL,DESCRLOCAL,LOCALPOREMP) values ('1','Barracão','N');
Insert into SINERGIA.TGFLOC (CODLOCAL,DESCRLOCAL,LOCALPOREMP) values ('2','Demonstração','S');
REM INSERTING into SINERGIA.TGFPRO
SET DEFINE OFF;
Insert into SINERGIA.TGFPRO (CODPROD,DESCRPROD,COMPLEMENTO,CARACTERISTICAS,ATIVO,CODGRUPOPROD,DHCRIACAO,DHALTER,CODUSUALTER,CODBARRAS,REFERENCIA,MARCA,USOPROD,NCM,DECCUSTO,DECVLR,DECQTD,PERCOMGER,PERCOMVEN,DESCMAX,VENDAMIN,VENDAMAX,PROMOCAO,ESTMIN,ESTMAX,PERMCOMPRA,PERMVENDA,CODLOCAL,PERMCONSUMO) values ('0','Produto padrão',null,null,'S','0',to_date('27/11/17','DD/MM/RR'),null,null,null,null,null,'Revenda',null,'2','2','2','0','0',null,'0',null,'N','0',null,'S','S','0','S');
Insert into SINERGIA.TGFPRO (CODPROD,DESCRPROD,COMPLEMENTO,CARACTERISTICAS,ATIVO,CODGRUPOPROD,DHCRIACAO,DHALTER,CODUSUALTER,CODBARRAS,REFERENCIA,MARCA,USOPROD,NCM,DECCUSTO,DECVLR,DECQTD,PERCOMGER,PERCOMVEN,DESCMAX,VENDAMIN,VENDAMAX,PROMOCAO,ESTMIN,ESTMAX,PERMCOMPRA,PERMVENDA,CODLOCAL,PERMCONSUMO) values ('1','Rosquinhas de Coco Mabel','Rosquinhas Mabel Tradicional',null,'S','10101',to_date('27/11/17','DD/MM/RR'),to_date('27/11/17','DD/MM/RR'),'1','1234567980',null,'Mabel','Revenda',null,'2','2','2','0','0',null,'0',null,'N','0',null,'S','N','0','S');
Insert into SINERGIA.TGFPRO (CODPROD,DESCRPROD,COMPLEMENTO,CARACTERISTICAS,ATIVO,CODGRUPOPROD,DHCRIACAO,DHALTER,CODUSUALTER,CODBARRAS,REFERENCIA,MARCA,USOPROD,NCM,DECCUSTO,DECVLR,DECQTD,PERCOMGER,PERCOMVEN,DESCMAX,VENDAMIN,VENDAMAX,PROMOCAO,ESTMIN,ESTMAX,PERMCOMPRA,PERMVENDA,CODLOCAL,PERMCONSUMO) values ('2','Leite Itambé','Leite em caixinha 1L',null,'N','20101',to_date('27/11/17','DD/MM/RR'),to_date('27/11/17','DD/MM/RR'),'1','1234567980',null,'Itambé','Revenda',null,'2','2','2','0','0',null,'0',null,'N','0',null,'S','N','2','S');
Insert into SINERGIA.TGFPRO (CODPROD,DESCRPROD,COMPLEMENTO,CARACTERISTICAS,ATIVO,CODGRUPOPROD,DHCRIACAO,DHALTER,CODUSUALTER,CODBARRAS,REFERENCIA,MARCA,USOPROD,NCM,DECCUSTO,DECVLR,DECQTD,PERCOMGER,PERCOMVEN,DESCMAX,VENDAMIN,VENDAMAX,PROMOCAO,ESTMIN,ESTMAX,PERMCOMPRA,PERMVENDA,CODLOCAL,PERMCONSUMO) values ('3','Rosquinhas de Coco Mabel',null,null,'S','0',to_date('17/01/18','DD/MM/RR'),null,null,null,null,'Mabel','Revenda',null,'2','2','2','0','0',null,'0',null,'N','0',null,'S','S','0','S');
REM INSERTING into SINERGIA.TRIMSG
SET DEFINE OFF;
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('12','1','S','<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>','1',to_date('09/01/18','DD/MM/RR'),'Título random',to_date('09/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('13','1','S','<html dir="ltr"><head></head><body contenteditable="true"><p></p><ol><li><font face="Segoe UI">Corrigir validação de acessos (Licença)</font></li><li><font face="Segoe UI">Colocar botão no MenuAccordion() para expandir/contrair e quando o mouse estiver perto, ele expandir automático</font></li><li><font face="Segoe UI">Criar a rotina de avisos</font></li><li><font face="Segoe UI">As informações da máquina, na parte administrativa, devem conter :<br>Informações da JDK, arquitetura, etc...<br>Informações do Windows, versão, arquitetura e etc...<br>Informações da máquina, processador, memória e etc...<br>Informações do banco de dados, ping da máquina, versão do client oracle, versão do oracle, média de pool e etc...<br><b><u>TODAVIA, COMPARAR COM O SANKHYA-W QUANDO FOR FAZER</u></b></font></li><li><font face="Segoe UI">Aprender a utilizar wait/notify/notifyall para melhor implementar o método de avisos do sistema.</font></li><li><font face="Segoe UI"><strike>Aprender a colocar atalho (Ctrl+W fechar aba, Ctrl+G buscar tela), etc...</strike></font></li><li><font face="Segoe UI">Colocar o "Clicked outside" no titledpane de propriedades.</font></li></ol><p></p></body></html>','1',to_date('09/01/18','DD/MM/RR'),'Título random',to_date('09/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('80','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('81','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('83','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('87','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('88','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('93','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('95','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('96','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('97','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('99','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('101','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('103','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('104','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('106','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('107','1','S','Teste msg visualizada5','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada5',to_date('14/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('108','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('109','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('75','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('76','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('82','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('89','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('94','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('98','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('100','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('102','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('105','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('15','1','S','Teste 1.0','1',to_date('11/01/18','DD/MM/RR'),'Título 1.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('16','1','S','Teste 2.0','1',to_date('11/01/18','DD/MM/RR'),'Título 2.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('17','1','S','Teste 2.0','1',to_date('11/01/18','DD/MM/RR'),'Título 2.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('18','1','S','Teste 2.0','1',to_date('11/01/18','DD/MM/RR'),'Título 2.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('19','1','N','Teste 2.0','1',to_date('11/01/18','DD/MM/RR'),'Título 2.0',null,'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('20','1','N','Teste 3.0','1',to_date('11/01/18','DD/MM/RR'),'Título 3.0',null,'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('21','1','S','Teste 3.0','1',to_date('11/01/18','DD/MM/RR'),'Título 3.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('22','1','S','Teste 3.0','1',to_date('11/01/18','DD/MM/RR'),'Título 3.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('23','1','S','Teste 3.0','1',to_date('11/01/18','DD/MM/RR'),'Título 3.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('24','1','S','Teste 4.0','1',to_date('11/01/18','DD/MM/RR'),'Título 4.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('25','1','S','Teste 5.0','1',to_date('11/01/18','DD/MM/RR'),'Título 5.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('26','1','S','Teste 5.0','1',to_date('11/01/18','DD/MM/RR'),'Título 5.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('27','1','S','Teste 5.0','1',to_date('11/01/18','DD/MM/RR'),'Título 5.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('28','1','S','Teste 6.0','1',to_date('11/01/18','DD/MM/RR'),'Título 6.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('29','1','S','Teste 6.0','1',to_date('11/01/18','DD/MM/RR'),'Título 6.0',to_date('11/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('30','1','S','Teste 6.0','1',to_date('12/01/18','DD/MM/RR'),'Título 6.0',to_date('12/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('31','1','S','Teste 6.0','1',to_date('12/01/18','DD/MM/RR'),'Título 6.0',to_date('12/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('32','2','N','Teste 6.0','1',to_date('12/01/18','DD/MM/RR'),'Título 6.0',null,'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('33','1','S','Teste 6.0','1',to_date('12/01/18','DD/MM/RR'),'Título 6.0',to_date('12/01/18','DD/MM/RR'),'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('34','3','N','Teste 6.0','1',to_date('12/01/18','DD/MM/RR'),'Título 6.0',null,'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('35','3','N','Teste 7.0','1',to_date('12/01/18','DD/MM/RR'),'Título 7.0',null,'3');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('36','1','S','Teste 7.0','2',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('37','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('38','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('39','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('40','1','S','Teste 7.0','2',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('41','1','S','Teste 7.0','1',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('42','1','S','Teste 7.0','2',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('43','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('44','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('45','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('46','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('47','1','S','Teste 7.0','3',to_date('12/01/18','DD/MM/RR'),'Título 7.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('48','1','S','Teste 8.0','3',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('49','1','S','Teste 8.0','2',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('50','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('51','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('52','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('53','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('54','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('55','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('56','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('57','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('58','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('59','1','S','Teste 8.0','1',to_date('12/01/18','DD/MM/RR'),'Título 8.0',to_date('12/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('60','1','S','Teste 8.0','1',to_date('13/01/18','DD/MM/RR'),'Título 8.0',to_date('13/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('61','1','S','Teste 8.0','1',to_date('13/01/18','DD/MM/RR'),'Título 8.0',to_date('13/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('62','1','S','Teste 8.0','1',to_date('13/01/18','DD/MM/RR'),'Título 8.0',to_date('13/01/18','DD/MM/RR'),'1');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('70','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('71','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('72','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('73','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('74','1','S','Teste msg visualizada4','2',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('78','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('85','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('1','1','S','Mensagem enviada para testar a rotina de envio de mensagens','2',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('2','1','S','Mensagem enviada para testar a rotina de envio de mensagens','1',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem2',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('3','1','S','Mensagem enviada para testar a rotina de envio de mensagens','2',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem3',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('4','1','S','Mensagem enviada para testar a rotina de envio de mensagens','2',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem4',to_date('07/01/18','DD/MM/RR'),'0');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('5','1','S','Mensagem enviada para testar a rotina de envio de mensagens','2',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem5',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('6','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem6',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('7','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem7',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('8','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem8',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('9','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem9',to_date('07/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('10','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem10',to_date('08/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('11','1','S','Mensagem enviada para testar a rotina de envio de mensagens','3',to_date('08/01/18','DD/MM/RR'),'Título de Mensagem11',to_date('08/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('0','1','S','Teste msg visualizada','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('63','1','S','Teste msg visualizada','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('64','1','S','Teste msg visualizada4','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('66','1','S','Teste msg visualizada','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada3',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('67','1','S','Teste msg visualizada4','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('68','1','S','Teste msg visualizada4','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('69','1','S','Teste msg visualizada4','2',to_date('13/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('13/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('90','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('91','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('92','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('14','1','S','Mensagem de teste','1',to_date('10/01/18','DD/MM/RR'),'Título amostra',to_date('10/01/18','DD/MM/RR'),'0');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('77','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('79','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),null);
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('84','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),'2');
Insert into SINERGIA.TRIMSG (CODMSG,CODUSU,VISUALIZADA,MENSAGEM,PRIORIDADE,DHALTER,TITULO,DHVISUALIZADA,CODUSUREM) values ('86','1','S','Teste msg visualizada4','1',to_date('14/01/18','DD/MM/RR'),'Teste msg visualizada4',to_date('14/01/18','DD/MM/RR'),'2');
REM INSERTING into SINERGIA.TSIARQ
SET DEFINE OFF;
Insert into SINERGIA.TSIARQ (CODUSU,ARQUIVO,LISTA) values ('0','Finalizar com telas pendentes','N');
Insert into SINERGIA.TSIARQ (CODUSU,ARQUIVO,LISTA) values ('0','Lista de Telas(Favoritas)',' ||Grupo de Produtos||Serviços||Produtos||Contas||Agências||Transportes||Moedas');
Insert into SINERGIA.TSIARQ (CODUSU,ARQUIVO,LISTA) values ('1','Lista de Telas(Favoritas)',' ||Tabela de Preços||Transportes||Agências||Contas||Unidades||Cadastro de Usuários||Portal de Compras||Serviços||Países||Logradouros||ConsultaDB||Produtos');
Insert into SINERGIA.TSIARQ (CODUSU,ARQUIVO,LISTA) values ('2','Lista de Telas(Favoritas)',' ');
Insert into SINERGIA.TSIARQ (CODUSU,ARQUIVO,LISTA) values ('3','Lista de Telas(Favoritas)',' ||Produtos');
REM INSERTING into SINERGIA.TSIEMP
SET DEFINE OFF;
Insert into SINERGIA.TSIEMP (CODEMP,RAZAOSOCIAL,NOMEFANTASIA,CNPJ) values ('1','Sinergia Técnologia em Sistemas LTDA.','Sinergia Técnologia','11222333444455');
Insert into SINERGIA.TSIEMP (CODEMP,RAZAOSOCIAL,NOMEFANTASIA,CNPJ) values ('0','Empresa padrão','Empresa padrão','0');
REM INSERTING into SINERGIA.TSIPAR
SET DEFINE OFF;
Insert into SINERGIA.TSIPAR (CHAVE,CODUSU,DESCRICAO,TIPO,INTEIRO,LIGADO,LISTA) values ('VERSAOATUALDB','0','Versão atual do banco de dados','T',null,'S','1.0.1');
REM INSERTING into SINERGIA.TSIPER
SET DEFINE OFF;
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Agências','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Bairros','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Bancos','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Cadastro de Usuários','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Cidades','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','ConsultaDB','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Contas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Contatos','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Controle de Acessos','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Controle de Estoque','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Controle de Lembretes','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Empresas','S','N','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Estados','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Grupo de Produtos','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Logradouros','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Moedas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Mov. Bancária','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Mov. Financeira','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Mov. Internas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Operações','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Parceiros','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Parâmetros','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Países','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Portal de Compras','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Portal de Vendas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Preços de Moedas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Produtos','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Saldo de Contas','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Serviços','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Tabela de Preços','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Transferências','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Transportes','S','S','S','S');
Insert into SINERGIA.TSIPER (PERFIL,TELA,VISUALIZA,ALTERA,INSERI,EXCLUI) values ('0','Unidades','S','S','S','S');
REM INSERTING into SINERGIA.TSIREG
SET DEFINE OFF;
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','28',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','7');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','67',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','8');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','69',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','9');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','72',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','11');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','73',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','12');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','74',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','13');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','2',to_date('04/01/18','DD/MM/RR'),'ConsultaDB','1');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','2',to_date('04/01/18','DD/MM/RR'),'Países','2');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','75',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','14');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','75',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','15');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','75',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','16');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','76',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','17');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','76',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','18');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','76',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','19');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','84',to_date('07/01/18','DD/MM/RR'),'ConsultaDB','20');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','88',to_date('07/01/18','DD/MM/RR'),'ConsultaDB','21');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','89',to_date('07/01/18','DD/MM/RR'),'ConsultaDB','22');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','197',to_date('08/01/18','DD/MM/RR'),'ConsultaDB','24');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','444',to_date('13/01/18','DD/MM/RR'),'Transportes','36');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','445',to_date('13/01/18','DD/MM/RR'),'ConsultaDB','37');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','448',to_date('13/01/18','DD/MM/RR'),'ConsultaDB','38');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('0','3',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','1');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','461',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','40');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','470',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','51');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','471',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','52');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','472',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','53');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','473',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','54');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','474',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','55');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','475',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','56');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','476',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','57');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','477',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','58');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','478',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','59');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','479',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','60');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','480',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','61');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','481',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','62');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','483',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','64');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','484',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','65');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','496',to_date('14/01/18','DD/MM/RR'),'Produtos','71');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','521',to_date('15/01/18','DD/MM/RR'),'Produtos','96');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','524',to_date('15/01/18','DD/MM/RR'),'Produtos','100');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','525',to_date('15/01/18','DD/MM/RR'),'Produtos','101');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','526',to_date('15/01/18','DD/MM/RR'),'Produtos','102');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','528',to_date('15/01/18','DD/MM/RR'),'Produtos','104');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','529',to_date('15/01/18','DD/MM/RR'),'Produtos','105');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','530',to_date('15/01/18','DD/MM/RR'),'Produtos','106');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','531',to_date('15/01/18','DD/MM/RR'),'Produtos','107');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','532',to_date('15/01/18','DD/MM/RR'),'Produtos','108');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','533',to_date('15/01/18','DD/MM/RR'),'Produtos','109');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','534',to_date('15/01/18','DD/MM/RR'),'Produtos','110');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','535',to_date('15/01/18','DD/MM/RR'),'Produtos','111');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','574',to_date('16/01/18','DD/MM/RR'),'Produtos','152');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','575',to_date('16/01/18','DD/MM/RR'),'Produtos','153');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','576',to_date('16/01/18','DD/MM/RR'),'Produtos','154');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','577',to_date('16/01/18','DD/MM/RR'),'Produtos','155');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','578',to_date('16/01/18','DD/MM/RR'),'Produtos','156');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','579',to_date('16/01/18','DD/MM/RR'),'Produtos','157');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','580',to_date('16/01/18','DD/MM/RR'),'Produtos','158');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','580',to_date('16/01/18','DD/MM/RR'),'Produtos','159');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','581',to_date('16/01/18','DD/MM/RR'),'Produtos','160');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','582',to_date('16/01/18','DD/MM/RR'),'Produtos','161');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','583',to_date('16/01/18','DD/MM/RR'),'Produtos','162');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','584',to_date('16/01/18','DD/MM/RR'),'Produtos','163');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','585',to_date('16/01/18','DD/MM/RR'),'Produtos','164');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','586',to_date('16/01/18','DD/MM/RR'),'Produtos','165');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','587',to_date('16/01/18','DD/MM/RR'),'Produtos','166');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','588',to_date('16/01/18','DD/MM/RR'),'Produtos','167');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','589',to_date('16/01/18','DD/MM/RR'),'Produtos','168');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','593',to_date('16/01/18','DD/MM/RR'),'Produtos','171');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','639',to_date('17/01/18','DD/MM/RR'),'Produtos','223');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','639',to_date('17/01/18','DD/MM/RR'),'Produtos','224');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','641',to_date('17/01/18','DD/MM/RR'),'Produtos','232');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','650',to_date('17/01/18','DD/MM/RR'),'Produtos','239');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','464',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','43');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','465',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','44');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','466',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','45');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','466',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','46');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','467',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','47');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','467',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','48');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','468',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','49');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','469',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','50');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','482',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','63');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','485',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','66');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','492',to_date('14/01/18','DD/MM/RR'),'Produtos','67');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','493',to_date('14/01/18','DD/MM/RR'),'Produtos','68');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','494',to_date('14/01/18','DD/MM/RR'),'Produtos','69');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','495',to_date('14/01/18','DD/MM/RR'),'Produtos','70');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','497',to_date('14/01/18','DD/MM/RR'),'Produtos','72');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','498',to_date('14/01/18','DD/MM/RR'),'Produtos','73');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','499',to_date('14/01/18','DD/MM/RR'),'Produtos','74');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','596',to_date('16/01/18','DD/MM/RR'),'Produtos','174');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','597',to_date('16/01/18','DD/MM/RR'),'Produtos','175');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','599',to_date('16/01/18','DD/MM/RR'),'Produtos','177');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','71',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','10');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','463',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','42');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','15',to_date('04/01/18','DD/MM/RR'),'ConsultaDB','5');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','27',to_date('06/01/18','DD/MM/RR'),'ConsultaDB','6');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','125',to_date('07/01/18','DD/MM/RR'),'Contas','23');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','232',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','25');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','234',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','26');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','235',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','27');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','240',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','28');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','241',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','29');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','248',to_date('09/01/18','DD/MM/RR'),'ConsultaDB','30');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','359',to_date('10/01/18','DD/MM/RR'),'Agências','31');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','2',to_date('04/01/18','DD/MM/RR'),'Contas','3');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','2',to_date('04/01/18','DD/MM/RR'),'Países','4');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','359',to_date('10/01/18','DD/MM/RR'),'Logradouros','32');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','518',to_date('15/01/18','DD/MM/RR'),'Produtos','93');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','523',to_date('15/01/18','DD/MM/RR'),'Produtos','98');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','557',to_date('16/01/18','DD/MM/RR'),'Produtos','135');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','559',to_date('16/01/18','DD/MM/RR'),'Produtos','137');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','565',to_date('16/01/18','DD/MM/RR'),'Produtos','143');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','594',to_date('16/01/18','DD/MM/RR'),'Produtos','172');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','598',to_date('16/01/18','DD/MM/RR'),'Produtos','176');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','602',to_date('17/01/18','DD/MM/RR'),'Produtos','180');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','604',to_date('17/01/18','DD/MM/RR'),'Produtos','183');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','608',to_date('17/01/18','DD/MM/RR'),'Produtos','187');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','617',to_date('17/01/18','DD/MM/RR'),'Produtos','196');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','618',to_date('17/01/18','DD/MM/RR'),'Produtos','197');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','622',to_date('17/01/18','DD/MM/RR'),'Produtos','202');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','629',to_date('17/01/18','DD/MM/RR'),'Produtos','209');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','637',to_date('17/01/18','DD/MM/RR'),'Produtos','217');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','456',to_date('13/01/18','DD/MM/RR'),'Agências','39');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','527',to_date('15/01/18','DD/MM/RR'),'Produtos','103');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','590',to_date('16/01/18','DD/MM/RR'),'Produtos','169');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','638',to_date('17/01/18','DD/MM/RR'),'Produtos','218');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','638',to_date('17/01/18','DD/MM/RR'),'ConsultaDB','219');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','639',to_date('17/01/18','DD/MM/RR'),'ConsultaDB','220');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','639',to_date('17/01/18','DD/MM/RR'),'Produtos','221');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','639',to_date('17/01/18','DD/MM/RR'),'Produtos','222');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','640',to_date('17/01/18','DD/MM/RR'),'Produtos','225');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','641',to_date('17/01/18','DD/MM/RR'),'Produtos','226');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','642',to_date('17/01/18','DD/MM/RR'),'Produtos','227');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','642',to_date('17/01/18','DD/MM/RR'),'Produtos','228');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','642',to_date('17/01/18','DD/MM/RR'),'Países','229');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','642',to_date('17/01/18','DD/MM/RR'),'Produtos','230');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','643',to_date('17/01/18','DD/MM/RR'),'Produtos','231');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','644',to_date('17/01/18','DD/MM/RR'),'Produtos','233');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','645',to_date('17/01/18','DD/MM/RR'),'Produtos','234');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','646',to_date('17/01/18','DD/MM/RR'),'Produtos','235');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','647',to_date('17/01/18','DD/MM/RR'),'Produtos','236');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','648',to_date('17/01/18','DD/MM/RR'),'Produtos','237');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','649',to_date('17/01/18','DD/MM/RR'),'Produtos','238');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','651',to_date('17/01/18','DD/MM/RR'),'Produtos','240');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','652',to_date('17/01/18','DD/MM/RR'),'Produtos','241');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','653',to_date('17/01/18','DD/MM/RR'),'Produtos','242');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','654',to_date('17/01/18','DD/MM/RR'),'Produtos','243');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','362',to_date('11/01/18','DD/MM/RR'),'Países','33');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','374',to_date('11/01/18','DD/MM/RR'),'ConsultaDB','34');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','400',to_date('12/01/18','DD/MM/RR'),'ConsultaDB','35');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','462',to_date('14/01/18','DD/MM/RR'),'ConsultaDB','41');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','500',to_date('15/01/18','DD/MM/RR'),'Produtos','75');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','501',to_date('15/01/18','DD/MM/RR'),'Produtos','76');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','502',to_date('15/01/18','DD/MM/RR'),'Produtos','77');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','503',to_date('15/01/18','DD/MM/RR'),'Produtos','78');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','504',to_date('15/01/18','DD/MM/RR'),'Produtos','79');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','505',to_date('15/01/18','DD/MM/RR'),'Produtos','80');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','506',to_date('15/01/18','DD/MM/RR'),'Produtos','81');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','507',to_date('15/01/18','DD/MM/RR'),'Produtos','82');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','508',to_date('15/01/18','DD/MM/RR'),'Produtos','83');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','509',to_date('15/01/18','DD/MM/RR'),'Produtos','84');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','510',to_date('15/01/18','DD/MM/RR'),'Produtos','85');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','511',to_date('15/01/18','DD/MM/RR'),'Produtos','86');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','512',to_date('15/01/18','DD/MM/RR'),'Produtos','87');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','513',to_date('15/01/18','DD/MM/RR'),'Produtos','88');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','514',to_date('15/01/18','DD/MM/RR'),'Produtos','89');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','515',to_date('15/01/18','DD/MM/RR'),'Produtos','90');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','516',to_date('15/01/18','DD/MM/RR'),'Produtos','91');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','517',to_date('15/01/18','DD/MM/RR'),'Produtos','92');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','519',to_date('15/01/18','DD/MM/RR'),'Produtos','94');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','520',to_date('15/01/18','DD/MM/RR'),'Produtos','95');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','522',to_date('15/01/18','DD/MM/RR'),'Produtos','97');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','523',to_date('15/01/18','DD/MM/RR'),'Produtos','99');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','536',to_date('15/01/18','DD/MM/RR'),'Produtos','112');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','537',to_date('15/01/18','DD/MM/RR'),'Produtos','113');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','537',to_date('15/01/18','DD/MM/RR'),'Produtos','114');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','538',to_date('15/01/18','DD/MM/RR'),'Produtos','115');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','539',to_date('15/01/18','DD/MM/RR'),'Produtos','116');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','540',to_date('15/01/18','DD/MM/RR'),'Produtos','117');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','541',to_date('15/01/18','DD/MM/RR'),'Produtos','118');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','542',to_date('15/01/18','DD/MM/RR'),'Produtos','119');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','543',to_date('15/01/18','DD/MM/RR'),'Produtos','120');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','544',to_date('15/01/18','DD/MM/RR'),'Produtos','121');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','545',to_date('15/01/18','DD/MM/RR'),'Produtos','122');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','546',to_date('15/01/18','DD/MM/RR'),'Produtos','123');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','547',to_date('15/01/18','DD/MM/RR'),'Produtos','124');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','548',to_date('15/01/18','DD/MM/RR'),'Produtos','125');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','549',to_date('15/01/18','DD/MM/RR'),'Produtos','126');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','550',to_date('15/01/18','DD/MM/RR'),'Produtos','127');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','551',to_date('16/01/18','DD/MM/RR'),'Produtos','128');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','551',to_date('16/01/18','DD/MM/RR'),'Produtos','129');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','552',to_date('16/01/18','DD/MM/RR'),'Produtos','130');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','553',to_date('16/01/18','DD/MM/RR'),'Produtos','131');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','554',to_date('16/01/18','DD/MM/RR'),'Produtos','132');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','555',to_date('16/01/18','DD/MM/RR'),'Produtos','133');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','556',to_date('16/01/18','DD/MM/RR'),'Produtos','134');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','558',to_date('16/01/18','DD/MM/RR'),'Produtos','136');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','560',to_date('16/01/18','DD/MM/RR'),'Produtos','138');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','561',to_date('16/01/18','DD/MM/RR'),'Produtos','139');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','562',to_date('16/01/18','DD/MM/RR'),'Produtos','140');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','563',to_date('16/01/18','DD/MM/RR'),'Produtos','141');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','564',to_date('16/01/18','DD/MM/RR'),'Produtos','142');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','566',to_date('16/01/18','DD/MM/RR'),'Produtos','144');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','567',to_date('16/01/18','DD/MM/RR'),'Produtos','145');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','568',to_date('16/01/18','DD/MM/RR'),'Produtos','146');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','569',to_date('16/01/18','DD/MM/RR'),'Produtos','147');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','570',to_date('16/01/18','DD/MM/RR'),'Produtos','148');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','571',to_date('16/01/18','DD/MM/RR'),'Produtos','149');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','572',to_date('16/01/18','DD/MM/RR'),'Produtos','150');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','573',to_date('16/01/18','DD/MM/RR'),'Produtos','151');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','592',to_date('16/01/18','DD/MM/RR'),'Produtos','170');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','595',to_date('16/01/18','DD/MM/RR'),'Produtos','173');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','600',to_date('16/01/18','DD/MM/RR'),'Produtos','178');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','601',to_date('17/01/18','DD/MM/RR'),'Produtos','179');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','602',to_date('17/01/18','DD/MM/RR'),'Produtos','181');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','603',to_date('17/01/18','DD/MM/RR'),'Produtos','182');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','605',to_date('17/01/18','DD/MM/RR'),'Produtos','184');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','606',to_date('17/01/18','DD/MM/RR'),'Produtos','185');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','607',to_date('17/01/18','DD/MM/RR'),'Produtos','186');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','609',to_date('17/01/18','DD/MM/RR'),'Produtos','188');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','610',to_date('17/01/18','DD/MM/RR'),'Produtos','189');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','611',to_date('17/01/18','DD/MM/RR'),'Produtos','190');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','612',to_date('17/01/18','DD/MM/RR'),'Produtos','191');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','613',to_date('17/01/18','DD/MM/RR'),'Produtos','192');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','614',to_date('17/01/18','DD/MM/RR'),'Produtos','193');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','615',to_date('17/01/18','DD/MM/RR'),'Produtos','194');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','616',to_date('17/01/18','DD/MM/RR'),'Produtos','195');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','619',to_date('17/01/18','DD/MM/RR'),'Produtos','198');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','620',to_date('17/01/18','DD/MM/RR'),'Produtos','199');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','621',to_date('17/01/18','DD/MM/RR'),'Produtos','200');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','622',to_date('17/01/18','DD/MM/RR'),'Produtos','201');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','623',to_date('17/01/18','DD/MM/RR'),'Produtos','203');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','624',to_date('17/01/18','DD/MM/RR'),'Produtos','204');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','625',to_date('17/01/18','DD/MM/RR'),'Produtos','205');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','626',to_date('17/01/18','DD/MM/RR'),'Produtos','206');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','627',to_date('17/01/18','DD/MM/RR'),'Produtos','207');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','628',to_date('17/01/18','DD/MM/RR'),'Produtos','208');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','630',to_date('17/01/18','DD/MM/RR'),'Produtos','210');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','631',to_date('17/01/18','DD/MM/RR'),'Produtos','211');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','632',to_date('17/01/18','DD/MM/RR'),'Produtos','212');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','633',to_date('17/01/18','DD/MM/RR'),'Produtos','213');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','634',to_date('17/01/18','DD/MM/RR'),'Produtos','214');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','635',to_date('17/01/18','DD/MM/RR'),'Produtos','215');
Insert into SINERGIA.TSIREG (CODUSU,CODSESSAO,DHACESSO,TELA,CODREG) values ('1','636',to_date('17/01/18','DD/MM/RR'),'Produtos','216');
REM INSERTING into SINERGIA.TSISES
SET DEFINE OFF;
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('1','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('2','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('3','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('4','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('6','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('7','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('8','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('9','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('10','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('11','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('12','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('13','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('14','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('16','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('18','1',to_date('05/01/18','DD/MM/RR'),to_date('05/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('19','1',to_date('05/01/18','DD/MM/RR'),to_date('05/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('20','1',to_date('05/01/18','DD/MM/RR'),to_date('05/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('21','1',to_date('05/01/18','DD/MM/RR'),to_date('05/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('22','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('23','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('24','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('26','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('27','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('28','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('29','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('31','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('33','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('36','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('38','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('39','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('41','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('44','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('49','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('50','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('51','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('52','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('60','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('63','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('65','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('66','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('72','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('79','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('82','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('84','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('85','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('87','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('88','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('89','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('90','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('91','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('92','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('94','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('95','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('96','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('97','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('98','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('99','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('100','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('101','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('102','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('103','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('104','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('105','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('106','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('107','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('108','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('109','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('110','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('111','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('113','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('116','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('120','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('121','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('122','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('126','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('127','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('128','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('130','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('131','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('133','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('134','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('135','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('136','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('137','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('138','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('139','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('140','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('141','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('142','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('144','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('145','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('148','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('153','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('154','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('155','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('157','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('161','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('162','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('163','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('165','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('166','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('167','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('169','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('170','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('174','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('175','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('176','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('177','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('180','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('182','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('183','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('184','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('185','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('186','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('187','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('197','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('199','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('200','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('201','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('202','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('203','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('205','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('206','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('207','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('68','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('75','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('77','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('80','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('152','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('156','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('158','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('159','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('160','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('164','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('168','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('171','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('172','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('188','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('189','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('190','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('191','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('192','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('193','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('194','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('195','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('196','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('208','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('209','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('210','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('211','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('212','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('213','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('236','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('454','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('456','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('461','1',to_date('14/01/18','DD/MM/RR'),null,'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('505','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('509','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('524','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('525','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('526','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('528','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('529','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('530','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('531','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('532','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('533','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('534','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('535','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('536','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('537','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('538','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('539','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('17','1',to_date('05/01/18','DD/MM/RR'),null,'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('37','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('540','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('541','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('542','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('543','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('544','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('545','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('546','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('547','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('548','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('549','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('550','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('551','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('552','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('553','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('554','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('555','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('556','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('557','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('558','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('559','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('560','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('561','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('562','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('563','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('564','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('565','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('566','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('567','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('568','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('569','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('570','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('571','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('572','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('573','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.103','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('574','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('575','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('576','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('577','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('578','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('579','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('580','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('581','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('582','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('583','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('584','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('585','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('586','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('587','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('588','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('589','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('590','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('591','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('592','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('593','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('594','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('595','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('596','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('597','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('598','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('599','1',to_date('16/01/18','DD/MM/RR'),to_date('16/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('600','1',to_date('16/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('601','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('602','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('603','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('604','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('605','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('606','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('607','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('608','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('609','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('610','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('25','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('32','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('34','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('35','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('114','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('115','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('117','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('119','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('123','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('124','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('125','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('132','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('146','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('147','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('149','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('150','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('151','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('173','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('214','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('222','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('226','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('250','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('255','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('257','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('258','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('260','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('262','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('263','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('264','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('265','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('266','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('267','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('268','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('269','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('270','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('271','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('272','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('276','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('277','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('278','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('279','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('280','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('281','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('282','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('283','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('284','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('285','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('286','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('288','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('290','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('291','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('292','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('293','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('294','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('295','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('296','1',to_date('09/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('297','1',to_date('09/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('298','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('300','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('301','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('304','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('305','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('306','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('307','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('308','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('309','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('310','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('313','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('314','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('315','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('316','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('318','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('320','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('321','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('322','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('323','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('324','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('325','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('326','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('327','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('328','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('329','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('330','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('331','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('333','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('334','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('336','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('344','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('347','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('349','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('355','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('361','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('364','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('365','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('369','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('370','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('372','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('382','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('383','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('5','1',to_date('04/01/18','DD/MM/RR'),to_date('04/01/18','DD/MM/RR'),'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('398','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('399','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('400','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('401','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('404','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('408','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('409','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('411','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('413','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('414','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('424','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('428','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('430','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('432','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('440','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('442','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('2','0',to_date('13/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('450','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('451','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('452','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('453','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('455','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('457','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('30','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('40','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('42','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('43','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('45','1',to_date('06/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('46','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('47','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('48','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('53','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('54','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('55','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('56','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('57','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('58','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('59','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('61','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('62','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('64','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('67','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('69','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('70','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('71','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('73','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('74','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('76','1',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('78','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('81','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('83','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('86','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('93','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('112','1',to_date('07/01/18','DD/MM/RR'),null,'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('118','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('129','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.104','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('143','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('178','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('179','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('181','1',to_date('07/01/18','DD/MM/RR'),to_date('07/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('198','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('204','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('215','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('216','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('217','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('218','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('219','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('220','1',to_date('08/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('221','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('223','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('224','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('225','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('227','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('228','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('229','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('230','1',to_date('08/01/18','DD/MM/RR'),to_date('08/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('231','1',to_date('09/01/18','DD/MM/RR'),null,'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('232','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('233','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('234','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('235','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('237','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('238','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('239','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('240','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('241','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('242','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('243','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('244','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('245','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('246','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('247','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('248','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('249','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('335','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('15','1',to_date('04/01/18','DD/MM/RR'),null,'192.168.12.172','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('1','2',to_date('06/01/18','DD/MM/RR'),to_date('06/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('338','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('340','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('342','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('345','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('348','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('350','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('351','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('352','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('357','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('358','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('360','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('362','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('363','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('366','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('367','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('368','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('374','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('375','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('376','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('377','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('378','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('379','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('380','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('381','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('384','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('385','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('386','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('387','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('388','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('390','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('392','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('393','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('394','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('395','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('396','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('397','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('402','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('403','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('405','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('406','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('407','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('410','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('415','1',to_date('12/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('416','1',to_date('12/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('417','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('418','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('419','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('420','1',to_date('12/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('421','1',to_date('12/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('252','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('253','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('251','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('254','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('256','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('259','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('261','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('273','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('274','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('275','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('287','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('289','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('299','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('302','1',to_date('09/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('303','1',to_date('09/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('311','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('312','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('317','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('319','1',to_date('09/01/18','DD/MM/RR'),to_date('09/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('332','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('337','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('339','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('341','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('343','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('346','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('353','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('354','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('356','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('359','1',to_date('10/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('371','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('373','1',to_date('11/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('389','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('391','1',to_date('12/01/18','DD/MM/RR'),null,'192.168.12.142','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('412','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('422','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('423','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('425','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('426','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('427','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('429','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('431','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('433','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('434','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('435','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('436','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('437','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('438','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('439','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('441','1',to_date('12/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('443','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('1','0',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('444','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('445','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('446','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('447','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('448','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('449','1',to_date('13/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('458','1',to_date('13/01/18','DD/MM/RR'),null,'192.168.0.37','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('459','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('460','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('3','0',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'127.0.0.1','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('462','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('463','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('464','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('465','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('466','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('467','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('468','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('469','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('470','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('471','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('472','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('473','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('474','1',to_date('14/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('475','1',to_date('14/01/18','DD/MM/RR'),null,'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('476','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('477','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('478','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('479','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('480','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('481','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('482','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('483','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('484','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('485','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('486','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('487','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('488','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('489','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('490','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('491','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('492','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('493','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('494','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('495','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('496','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('497','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('498','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('499','1',to_date('14/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('500','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('501','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('502','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('503','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('504','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('506','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('507','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('508','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('510','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('511','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('512','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('513','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('514','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('515','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('516','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('517','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('518','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('519','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('520','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('521','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('522','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('523','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.0.100','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('527','1',to_date('15/01/18','DD/MM/RR'),to_date('15/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('617','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('618','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('629','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('638','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('644','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('647','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('649','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('652','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('653','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('654','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('611','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('613','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('614','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('619','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('620','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('621','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('622','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('626','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('627','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('630','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('632','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('633','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('634','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('635','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('636','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('637','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('639','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('640','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('641','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('642','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('643','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('645','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('646','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('648','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('612','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('615','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('616','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('623','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('624','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('625','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('628','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('631','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.0.107','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('650','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
Insert into SINERGIA.TSISES (CODSESSAO,CODUSU,DHLOGIN,DHLOGOUT,IPMAQ,NOMEMAQ,VERSAOEXEC) values ('651','1',to_date('17/01/18','DD/MM/RR'),to_date('17/01/18','DD/MM/RR'),'192.168.12.186','Marcelo-NTB','1.0.0');
REM INSERTING into SINERGIA.TSITEL
SET DEFINE OFF;
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Cadastro de Usuários','Acessos > Cadastro de Usuários','Acessos','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Controle de Acessos','Acessos > Controle de Acessos','Acessos','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Empresas','Avançado > Empresas','Avançado','S','/core/visao/main/cadastros/empresa/Empresa.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Parceiros','Avançado > Parceiros','Avançado','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Contatos','Avançado > Parceiros ( Contatos )','Avançado','N','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Operações','Avançado > Operações','Avançado','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Produtos','Cadastros > Produtos','Cadastros','S','/br/com/sinergia/views/CadProdutos.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Serviços','Cadastros > Serviços','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Grupo de Produtos','Cadastros > Grupo de Produtos','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Unidades','Cadastros > Unidades','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Contas','Cadastros > Contas','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Agências','Cadastros > Agências','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Bancos','Cadastros > Bancos','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Transportes','Cadastros > Transportes','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Moedas','Cadastros > Moedas','Cadastros','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Países','Endereços > Países','Endereços','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Estados','Endereços > Estados','Endereços','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Cidades','Endereços > Cidades','Endereços','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Bairros','Endereços > Bairros','Endereços','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Logradouros','Endereços > Logradouros','Endereços','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Portal de Compras','Comercial > Portal de Compras','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Portal de Vendas','Comercial > Portal de Vendas','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Mov. Internas','Comercial > Mov. Internas','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Tabela de Preços','Comercial > Tabela de Preços','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Preços de Moedas','Comercial > Preços de Moedas','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Controle de Estoque','Comercial > Controle de Estoque','Comercial','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Mov. Financeira','Financeiro > Mov. Financeiro','Financeiro','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Mov. Bancária','Financeiro > Mov. Bancária','Financeiro','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Transferências','Financeiro > Transferências','Financeiro','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Saldo de Contas','Financeiro > Saldo de Contas','Financeiro','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Controle de Lembretes','Acessos > Controle de Lembretes','Acessos','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('Parâmetros','Avançado > Parâmetros','Avançado','S','/core/visao/main/login/Login.fxml');
Insert into SINERGIA.TSITEL (TELA,CAMINHO,MENU,FRAME,LOCALIZADOR) values ('ConsultaDB','Avançado > ConsultaDB','Avançado','S','/br/com/sinergia/views/ConsultaDB.fxml');
REM INSERTING into SINERGIA.TSIUSU
SET DEFINE OFF;
Insert into SINERGIA.TSIUSU (CODUSU,LOGIN,NOME,SENHA,PERFIL,CODEMP,ATIVO) values ('1','MARCELOEV','Marcelo Costa Domingues','AB9214B8A80A33D0EEE81B25BAE1026A','0','1','S');
Insert into SINERGIA.TSIUSU (CODUSU,LOGIN,NOME,SENHA,PERFIL,CODEMP,ATIVO) values ('0','ADMIN','Administrador','21232F297A57A5A743894A0E4A801FC3','0','0','S');
Insert into SINERGIA.TSIUSU (CODUSU,LOGIN,NOME,SENHA,PERFIL,CODEMP,ATIVO) values ('2','CLARA','Clara Castro Barroso','23D1E10DF85EF805B442A922B240CE25','0','1','S');
Insert into SINERGIA.TSIUSU (CODUSU,LOGIN,NOME,SENHA,PERFIL,CODEMP,ATIVO) values ('3','SVEN','Gerente de Financeiro','B732B209DBC45A50F95AF8825F739FC5','0','0','S');
--------------------------------------------------------
--  DDL for Index IDX_TRIMSG_FK_CODUSU
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TRIMSG_FK_CODUSU" ON "SINERGIA"."TRIMSG" ("CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIUSU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIUSU_PK" ON "SINERGIA"."TSIUSU" ("CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSISES_FK_CODUSU
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSISES_FK_CODUSU" ON "SINERGIA"."TSISES" ("CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIPAR_LISTA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIPAR_LISTA" ON "SINERGIA"."TSIPAR" ("LISTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIPER_FK_TELA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIPER_FK_TELA" ON "SINERGIA"."TSIPER" ("TELA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TGFPRO_FK_CODUSUALTER
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TGFPRO_FK_CODUSUALTER" ON "SINERGIA"."TGFPRO" ("CODUSUALTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIPAR_INTEIRO
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIPAR_INTEIRO" ON "SINERGIA"."TSIPAR" ("INTEIRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIPAR_LIGADO
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIPAR_LIGADO" ON "SINERGIA"."TSIPAR" ("LIGADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIREG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIREG_PK" ON "SINERGIA"."TSIREG" ("CODUSU", "CODREG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TGFPRO_FK_CODGRUPOPROD
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TGFPRO_FK_CODGRUPOPROD" ON "SINERGIA"."TGFPRO" ("CODGRUPOPROD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIUSU_SENHA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIUSU_SENHA" ON "SINERGIA"."TSIUSU" ("SENHA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIPER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIPER_PK" ON "SINERGIA"."TSIPER" ("PERFIL", "TELA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TGFLEM
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TGFLEM" ON "SINERGIA"."TGFLEM" ("CODUSU", "DHALTER", "LEMBRETE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 166 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index UNQ_TSIUSU_LOGIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."UNQ_TSIUSU_LOGIN" ON "SINERGIA"."TSIUSU" ("LOGIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIARQ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIARQ_PK" ON "SINERGIA"."TSIARQ" ("CODUSU", "ARQUIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TGFPRO_FK_CODLOCAL
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TGFPRO_FK_CODLOCAL" ON "SINERGIA"."TGFPRO" ("CODLOCAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TGFLEM_OLD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TGFLEM_OLD_PK" ON "SINERGIA"."TGFLEM_OLD" ("CODUSU", "DHEXCLUSAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIPAR_FK_CODUSU
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIPAR_FK_CODUSU" ON "SINERGIA"."TSIPAR" ("CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIREG_FK_TELA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIREG_FK_TELA" ON "SINERGIA"."TSIREG" ("TELA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSITEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSITEL_PK" ON "SINERGIA"."TSITEL" ("TELA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIEMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIEMP_PK" ON "SINERGIA"."TSIEMP" ("CODEMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSESSOES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSESSOES_PK" ON "SINERGIA"."TSISES" ("CODSESSAO", "CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIREG_FK_CODSESSAO_CODUSU
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIREG_FK_CODSESSAO_CODUSU" ON "SINERGIA"."TSIREG" ("CODSESSAO", "CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TRIMSG_VISUALIZADA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TRIMSG_VISUALIZADA" ON "SINERGIA"."TRIMSG" ("VISUALIZADA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TSIPAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TSIPAR_PK" ON "SINERGIA"."TSIPAR" ("CHAVE", "CODUSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index IDX_TSIARQ_BUSCA
--------------------------------------------------------

  CREATE INDEX "SINERGIA"."IDX_TSIARQ_BUSCA" ON "SINERGIA"."TSIARQ" ("CODUSU", "ARQUIVO", "LISTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TRIMSG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TRIMSG_PK" ON "SINERGIA"."TRIMSG" ("CODMSG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Index TGFPRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SINERGIA"."TGFPRO_PK" ON "SINERGIA"."TGFPRO" ("CODPROD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA" ;
--------------------------------------------------------
--  DDL for Trigger TRG_INC_TGFLEM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SINERGIA"."TRG_INC_TGFLEM" 
BEFORE INSERT ON TGFLEM
FOR EACH ROW
DECLARE
    P_COUNT NUMBER(22) := 0;
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    INSERT INTO TGFLEM_OLD
    (CODUSU, DHEXCLUSAO, DHALTER, LEMBRETE)
    SELECT CODUSU, SYSDATE, DHALTER, LEMBRETE
    FROM TGFLEM
    WHERE CODUSU = :NEW.CODUSU
    AND DHALTER <> :NEW.DHALTER;

    DELETE TGFLEM
    WHERE CODUSU = :NEW.CODUSU;

    COMMIT;

    EXCEPTION WHEN OTHERS THEN ROLLBACK;
END;
/
ALTER TRIGGER "SINERGIA"."TRG_INC_TGFLEM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_INC_UPD_TSIUSU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SINERGIA"."TRG_INC_UPD_TSIUSU" 
AFTER INSERT OR UPDATE ON TSIUSU
FOR EACH ROW
DECLARE
    P_COUNT NUMBER(22) := 0;
BEGIN
    SELECT COUNT(1)
        INTO P_COUNT
    FROM TGFLEM LEM
        WHERE LEM.CODUSU = :NEW.CODUSU;

    IF(P_COUNT = 0) THEN
    INSERT INTO TGFLEM
    (CODUSU, DHALTER, LEMBRETE)
    VALUES
    (:NEW.CODUSU, SYSDATE, NULL);
    END IF;
END;
/
ALTER TRIGGER "SINERGIA"."TRG_INC_UPD_TSIUSU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_INS_UPD_TGFPRO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SINERGIA"."TRG_INS_UPD_TGFPRO" BEFORE
  INSERT OR
  UPDATE ON TGFPRO FOR EACH ROW 
  DECLARE 
    P_COUNT INT;
    ERRMSG VARCHAR2(255);
    ERROR  EXCEPTION;
  BEGIN
    IF((INSERTING) OR (UPDATING AND :OLD.CODGRUPOPROD <> :NEW.CODGRUPOPROD)) THEN

      SELECT COUNT(1)
      INTO P_COUNT
      FROM TGFGRU
      WHERE CODGRUPOPROD = :NEW.CODGRUPOPROD
      AND ANALITICO = 'N';

      IF(P_COUNT = 0) THEN
        ERRMSG := 'Grupo de produtos não pode ser analitico!'||chr(13)||'Operação cancelada.';
        RAISE ERROR;
      END IF;

    END IF;

  EXCEPTION
  WHEN ERROR THEN
    RAISE_APPLICATION_ERROR(-20101, ERRMSG);
  END;


/
ALTER TRIGGER "SINERGIA"."TRG_INS_UPD_TGFPRO" ENABLE;
--------------------------------------------------------
--  DDL for Function GET_COD
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SINERGIA"."GET_COD" (V_COLUNA   IN VARCHAR2, V_TABELA   IN VARCHAR2)
   RETURN NUMBER
IS
   P_COUNT          NUMBER (15) := -1;
   P_LENGTH         NUMBER(23) := 0;
   ERRMSG           VARCHAR2(255);
   ERROR            EXCEPTION;
   P_TIPO           NUMBER(3);
   P_NUMERO         NUMBER(23);
   P_VALIDA         BOOLEAN := TRUE;
   PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN    

    SELECT COUNT(1)
        INTO P_COUNT
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = V_TABELA
    AND COLUMN_NAME = V_COLUNA;
    IF (P_COUNT = 0) THEN
            ERRMSG := 'Coluna '|| V_COLUNA ||' não encontrada na tabela '|| V_TABELA ||'.' ||chr(13)|| 'Favor revise as condições de busca.';
    RAISE ERROR;
  END IF;

  SELECT TIPO
    INTO P_TIPO
  FROM (SELECT CASE WHEN DATA_PRECISION IS NULL THEN DATA_LENGTH ELSE DATA_PRECISION END AS TIPO 
            FROM USER_TAB_COLUMNS
             WHERE TABLE_NAME = V_TABELA
                AND COLUMN_NAME = V_COLUNA
                  AND DATA_TYPE = 'NUMBER'
                  UNION ALL
                    (SELECT -1 FROM DUAL))
  WHERE ROWNUM = 1;
  IF (P_TIPO = -1) THEN
       ERRMSG := 'Coluna '||V_COLUNA||' não tem estrutura de números.'||chr(13)||'Não é possível pegar o próximo código desta coluna.';
    RAISE ERROR;
  END IF;


  EXECUTE IMMEDIATE 'SELECT (NVL(MAX('||V_COLUNA||'),0)+1) FROM '||V_TABELA INTO P_COUNT;
  IF (P_COUNT < 0) THEN
            ERRMSG := 'Retorno da busca pelo próximo código diferente do esperado.' ||chr(13)||'Favor revise as condições de busca.';
    RAISE ERROR;
  END IF;

  EXECUTE IMMEDIATE 'SELECT COUNT('||V_COLUNA||') FROM '||V_TABELA INTO P_LENGTH;
  IF ((P_LENGTH+1) < P_COUNT) THEN --ERRMSG := 'Existe faixa de numeração que ainda não foi consumida.('||V_TABELA||'.'||V_COLUNA||')';
       P_LENGTH := 0;
        WHILE(P_VALIDA AND (P_LENGTH+1) < P_COUNT) LOOP
            EXECUTE IMMEDIATE 'SELECT COUNT(1) FROM '||V_TABELA||' WHERE '||V_COLUNA||' = '||P_LENGTH INTO P_NUMERO;
            IF(P_NUMERO = 0) THEN
                P_COUNT := P_LENGTH;
                    P_VALIDA := FALSE;
            ELSE 
                P_LENGTH := P_LENGTH + 1;
            END IF;
          END LOOP;
  END IF;    

  SELECT LENGTH(P_COUNT)
    INTO P_LENGTH
  FROM DUAL;
  IF (P_LENGTH > P_TIPO) THEN
            ERRMSG := 'Faixa de numeração ultrapassou o limite.('||V_TABELA||'.'||V_COLUNA||')';
    RAISE ERROR;
  END IF;

  RETURN P_COUNT;

EXCEPTION
  WHEN ERROR THEN
      RAISE_APPLICATION_ERROR(-20101, ERRMSG);
END;


/
--------------------------------------------------------
--  DDL for Function GET_CODREG
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SINERGIA"."GET_CODREG" (V_CODUSU IN INTEGER)
RETURN INTEGER IS
P_CODREG INTEGER := 0;
BEGIN
    SELECT NVL(MAX(CODREG),0) + 1
        INTO P_CODREG
    FROM TSIREG REG
    WHERE REG.CODUSU = V_CODUSU;
RETURN P_CODREG;
END;

/
--------------------------------------------------------
--  DDL for Function GET_CODSESSAO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SINERGIA"."GET_CODSESSAO" (V_CODUSU IN INTEGER)
RETURN INTEGER IS
P_CODSESSAO INTEGER := 0;
BEGIN
    SELECT NVL(MAX(CODSESSAO),0) + 1
        INTO P_CODSESSAO
    FROM TSISES SES
    WHERE SES.CODUSU = V_CODUSU;
RETURN P_CODSESSAO;
END;


/
--------------------------------------------------------
--  DDL for Function GET_TSIPAR_T
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SINERGIA"."GET_TSIPAR_T" (V_CHAVE IN VARCHAR2, V_CODUSU IN INTEGER)
RETURN VARCHAR2 IS
P_TEXTO VARCHAR2(1000);
BEGIN
  BEGIN
    SELECT LISTA
      INTO P_TEXTO
    FROM TSIPAR PAR
      WHERE PAR.CHAVE = V_CHAVE
      AND PAR.CODUSU IN (V_CODUSU, 0)
      AND ROWNUM = 1
    ORDER BY PAR.CODUSU DESC;
      EXCEPTION WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20101, 'Erro ao tentar buscar o parâmetro: '|| V_CHAVE||' x Cód. Usuário: '||V_CODUSU||'.'||
        CHR(10)||'Sem resultados para a busca.');
          WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20101, 'Erro ao tentar buscar o parâmetro: '|| V_CHAVE||' x para o Cód. Usuário: '||V_CODUSU||'.'||
          CHR(10)||SQLERRM);    
  END;            
RETURN P_TEXTO;
END;


/
--------------------------------------------------------
--  DDL for Function MD5
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SINERGIA"."MD5" (valor varchar) 
return varchar2 is v_input varchar2(2000) := valor;
hexkey varchar2(32) := null;
begin
hexkey := rawtohex(dbms_obfuscation_toolkit.md5(input => utl_raw.cast_to_raw(v_input)));
return nvl(hexkey,'');
end;


/
--------------------------------------------------------
--  Constraints for Table TSIUSU
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("CODEMP" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("CODUSU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("SENHA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" MODIFY ("ATIVO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIUSU" ADD CONSTRAINT "CHK_TSIUSU_ATIVO" CHECK (ATIVO IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIUSU" ADD CONSTRAINT "TSIUSU_PK" PRIMARY KEY ("CODUSU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TSIUSU" ADD CONSTRAINT "UNQ_TSIUSU_LOGIN" UNIQUE ("LOGIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TSIPER
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("PERFIL" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("TELA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("VISUALIZA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("ALTERA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("INSERI" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" MODIFY ("EXCLUI" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "CHK_TSIPER_EXCLUI" CHECK (EXCLUI IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "CHK_TSIPER_INSERI" CHECK (INSERI IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "CHK_TSIPER_ALTERA" CHECK (ALTERA IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "CHK_TSIPER_VISUALIZA" CHECK (VISUALIZA IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "TSIPER_PK" PRIMARY KEY ("PERFIL", "TELA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRIMSG
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TRIMSG" ADD CONSTRAINT "TRIMSG_PK" PRIMARY KEY ("CODMSG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("DHALTER" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("PRIORIDADE" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("MENSAGEM" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("VISUALIZADA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("CODUSU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TRIMSG" MODIFY ("CODMSG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TGFLEM_OLD
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TGFLEM_OLD" ADD CONSTRAINT "TGFLEM_OLD_PK" PRIMARY KEY ("CODUSU", "DHEXCLUSAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TGFLEM_OLD" MODIFY ("DHALTER" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFLEM_OLD" MODIFY ("DHEXCLUSAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFLEM_OLD" MODIFY ("CODUSU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TSIEMP
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIEMP" ADD CONSTRAINT "TSIEMP_PK" PRIMARY KEY ("CODEMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TSIEMP" MODIFY ("NOMEFANTASIA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIEMP" MODIFY ("RAZAOSOCIAL" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIEMP" MODIFY ("CODEMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TSIARQ
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIARQ" ADD CONSTRAINT "TSIARQ_PK" PRIMARY KEY ("CODUSU", "ARQUIVO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TSIARQ" MODIFY ("ARQUIVO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIARQ" MODIFY ("CODUSU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TGFPRO
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "TGFPRO_PK" PRIMARY KEY ("CODPROD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_PERMVENDA" CHECK (PERMVENDA IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_PERMCOMPRA" CHECK (PERMCOMPRA IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_PERMCONSUMO" CHECK (PERMCONSUMO IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_USOPROD" CHECK (USOPROD IN ('Subproduto',
'Prod.Intermediário',
'Brinde',
'Consumo',
'Revenda (por fórmula)',
'Embalagem',
'Brinde (NF)',
'Imobilizado',
'Matéria prima',
'Outros insumos',
'Em Processo',
'Revenda',
'Terceiros',
'Venda (fabricação própria)')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_PROMOCAO" CHECK (PROMOCAO IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" ADD CONSTRAINT "CHK_TGFPRO_ATIVO" CHECK (ATIVO IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PERMCONSUMO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("CODLOCAL" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PERMVENDA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PERMCOMPRA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PROMOCAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PERCOMVEN" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("PERCOMGER" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("DECQTD" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("DECVLR" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("DECCUSTO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("USOPROD" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("DHCRIACAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("CODGRUPOPROD" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("ATIVO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("DESCRPROD" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFPRO" MODIFY ("CODPROD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TGFLEM
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TGFLEM" ADD CONSTRAINT "TGFLEM_PK" PRIMARY KEY ("CODUSU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 166 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TGFLEM" MODIFY ("DHALTER" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TGFLEM" MODIFY ("CODUSU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TSITEL
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSITEL" ADD CONSTRAINT "CHK_TSITEL_FRAME" CHECK (FRAME IN ('S','N')) ENABLE;
  ALTER TABLE "SINERGIA"."TSITEL" ADD CONSTRAINT "TSITEL_PK" PRIMARY KEY ("TELA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TSITEL" MODIFY ("LOCALIZADOR" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSITEL" MODIFY ("FRAME" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSITEL" MODIFY ("MENU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSITEL" MODIFY ("TELA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TSIREG
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIREG" ADD CONSTRAINT "TSIREG_PK" PRIMARY KEY ("CODUSU", "CODREG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
  ALTER TABLE "SINERGIA"."TSIREG" MODIFY ("TELA" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIREG" MODIFY ("DHACESSO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIREG" MODIFY ("CODSESSAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIREG" MODIFY ("CODUSU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIREG" MODIFY ("CODREG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TSISES
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("CODSESSAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("CODUSU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("DHLOGIN" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("IPMAQ" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("NOMEMAQ" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" MODIFY ("VERSAOEXEC" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSISES" ADD CONSTRAINT "TSISES_PK" PRIMARY KEY ("CODSESSAO", "CODUSU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TSIPAR
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIPAR" MODIFY ("CHAVE" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPAR" MODIFY ("CODUSU" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPAR" MODIFY ("DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPAR" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPAR" MODIFY ("LIGADO" NOT NULL ENABLE);
  ALTER TABLE "SINERGIA"."TSIPAR" ADD CONSTRAINT "CHK_TSIPAR_TIPO" CHECK (TIPO IN ('L','T','O')) ENABLE;
  ALTER TABLE "SINERGIA"."TSIPAR" ADD CONSTRAINT "TSIPAR_PK" PRIMARY KEY ("CHAVE", "CODUSU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SINERGIA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TGFLEM
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TGFLEM" ADD CONSTRAINT "FK_TGFLEM_CODUSU" FOREIGN KEY ("CODUSU")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRIMSG
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TRIMSG" ADD CONSTRAINT "FK_TRIMSG_CODUSU" FOREIGN KEY ("CODUSU")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SINERGIA"."TRIMSG" ADD CONSTRAINT "FK_TRIMSG_CODUSUREM" FOREIGN KEY ("CODUSUREM")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TSIARQ
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIARQ" ADD CONSTRAINT "FK_TSIARQ_CODUSU" FOREIGN KEY ("CODUSU")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TSIPAR
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIPAR" ADD CONSTRAINT "FK_CODUSU" FOREIGN KEY ("CODUSU")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TSIPER
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIPER" ADD CONSTRAINT "FK_TSITEL_TELA" FOREIGN KEY ("TELA")
	  REFERENCES "SINERGIA"."TSITEL" ("TELA") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TSIREG
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSIREG" ADD CONSTRAINT "FK_TSIREG_SESSAO" FOREIGN KEY ("CODSESSAO", "CODUSU")
	  REFERENCES "SINERGIA"."TSISES" ("CODSESSAO", "CODUSU") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SINERGIA"."TSIREG" ADD CONSTRAINT "FK_TSIREG_TELA" FOREIGN KEY ("TELA")
	  REFERENCES "SINERGIA"."TSITEL" ("TELA") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TSISES
--------------------------------------------------------

  ALTER TABLE "SINERGIA"."TSISES" ADD CONSTRAINT "FK_TSISES_CODUSU" FOREIGN KEY ("CODUSU")
	  REFERENCES "SINERGIA"."TSIUSU" ("CODUSU") ON DELETE CASCADE ENABLE;
