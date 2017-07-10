-- Create table
create table T_PARAMETER_NUMBER
(
  data_log   TIMESTAMP(6) not null,
  seq        NUMBER(3) not null,
  cod_update NUMBER(10) not null,
  name       VARCHAR2(40) not null,
  valor      NUMBER(*,2) not null
);

alter table T_PARAMETER_NUMBER
  add constraint PK_PARAMETER_NUMBER primary key (DATA_LOG, SEQ, COD_UPDATE, NAME)
  ;

alter table T_PARAMETER_NUMBER
  add constraint FK_PARAMETER foreign key (DATA_LOG, SEQ, COD_UPDATE, NAME)
  references T_PARAMETER (DATA_LOG, SEQ, COD_UPDATE, NAME);
