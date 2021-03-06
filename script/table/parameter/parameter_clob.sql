create table LOG_AUDIT.T_PARAMETER_CLOB
(
  data_log   TIMESTAMP(6) not null,
  seq        NUMBER(3) not null,
  cod_update NUMBER(10) not null,
  name       VARCHAR2(40) not null,
  param_value      CLOB not null,
  constraint PK_PARAMETER_CLOB primary key (DATA_LOG, SEQ, COD_UPDATE, NAME),
  constraint FK_PARAMETER_clob foreign key (DATA_LOG, SEQ, COD_UPDATE, NAME)
  references LOG_AUDIT.T_PARAMETER (DATA_LOG, SEQ, COD_UPDATE, NAME)
);