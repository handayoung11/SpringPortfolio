--------------------------------------------------------
--  ������ ������ - �Ͽ���-11��-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "PROJECT1"."BOARD" 
   (	"IDX" NUMBER(*,0), 
	"TITLE" VARCHAR2(50 BYTE), 
	"WRITER" NUMBER(*,0), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"SEE" NUMBER(*,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT1"."BOARD_PK" ON "PROJECT1"."BOARD" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT1"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("REGDATE" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT1"."BOARD" MODIFY ("SEE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT1"."BOARD" ADD CONSTRAINT "BOARD_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "PROJECT1"."USERS" ("IDX") ENABLE;