--------------------------------------------------------
--  颇老捞 积己凳 - 老夸老-11岿-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View BOARD_USERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT1"."BOARD_USERS" ("IDX", "TITLE", "WRITER", "CONTENT", "REGDATE", "SEE", "NAME") AS 
  SELECT b."IDX",b."TITLE",b."WRITER",b."CONTENT",b."REGDATE",b."SEE", u.name
    
FROM board b inner join users u on b.writer=u.idx
;
