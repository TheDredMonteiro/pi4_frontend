/*==============================================================*/
/* Table: FAVORITOS                                             */
/*==============================================================*/
create table FAVORITOS (
   ID_FAVORITOS         INT4                 not null,
   ID_UTILIZADOR        INT4                 null,
   ID_PONTO_INTERESSE   INT4                 null,
   constraint PK_FAVORITOS primary key (ID_FAVORITOS)
);

/*==============================================================*/
/* Index: FAVORITOS_PK                                          */
/*==============================================================*/
create unique index FAVORITOS_PK on FAVORITOS (
ID_FAVORITOS
);

/*==============================================================*/
/* Index: ADICIONA_FK                                           */
/*==============================================================*/
create  index ADICIONA_FK on FAVORITOS (
ID_UTILIZADOR
);

/*==============================================================*/
/* Index: INTERESSE_FK                                          */
/*==============================================================*/
create  index INTERESSE_FK on FAVORITOS (
ID_PONTO_INTERESSE
);

/*==============================================================*/
/* Table: LANDING_PAGE                                          */
/*==============================================================*/
create table LANDING_PAGE (
   ID_LANDING_PAGE      INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   HERO_TITULO          VARCHAR(100)         not null,
   HERO_DESCRICAO       VARCHAR(250)         null,
   HERO_IMAGEM          VARCHAR(1024)        not null,
   BODY_TITULO          VARCHAR(100)         null,
   BODY_DESCRICAO       TEXT                 null,
   FOTOGRAFIA_1         VARCHAR(1024)        null,
   FOTOGRAFIA_2         VARCHAR(1024)        null,
   FOTOGRAFIA_3         VARCHAR(1024)        null,
   IMAGEM_ANDROID       VARCHAR(1024)        null,
   constraint PK_LANDING_PAGE primary key (ID_LANDING_PAGE)
);

/*==============================================================*/
/* Index: LANDING_PAGE_PK                                       */
/*==============================================================*/
create unique index LANDING_PAGE_PK on LANDING_PAGE (
ID_LANDING_PAGE
);

/*==============================================================*/
/* Index: ATUALIZAR_FK                                          */
/*==============================================================*/
create  index ATUALIZAR_FK on LANDING_PAGE (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR (
   ID_PONTO_INTERESSE   INT4                 not null,
   ID_RESERVA           INT4                 not null,
   constraint PK_LUGAR primary key (ID_PONTO_INTERESSE, ID_RESERVA)
);

/*==============================================================*/
/* Index: LUGAR_PK                                              */
/*==============================================================*/
create unique index LUGAR_PK on LUGAR (
ID_PONTO_INTERESSE,
ID_RESERVA
);

/*==============================================================*/
/* Index: LUGAR2_FK                                             */
/*==============================================================*/
create  index LUGAR2_FK on LUGAR (
ID_RESERVA
);

/*==============================================================*/
/* Index: LUGAR_FK                                              */
/*==============================================================*/
create  index LUGAR_FK on LUGAR (
ID_PONTO_INTERESSE
);

/*==============================================================*/
/* Table: PONTOS_INTERESSE                                      */
/*==============================================================*/
create table PONTOS_INTERESSE (
   ID_PONTO_INTERESSE   INT4                 not null,
   ID_TIPO_PONTO_INTERESSE INT4                 not null,
   ID_REGIAO            INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   PONTO_INTERESSE      VARCHAR(250)         not null,
   FOTOGRAFIA_1         VARCHAR(1024)        null,
   FOTOGRAFIA_2         VARCHAR(1024)        null,
   FOTOGRAFIA_3         VARCHAR(1024)        null,
   QRCODE               VARCHAR(50)          null,
   DESCRICAO            TEXT                 null,
   PONTOS               INT4                 not null,
   constraint PK_PONTOS_INTERESSE primary key (ID_PONTO_INTERESSE)
);

/*==============================================================*/
/* Index: PONTOS_INTERESSE_PK                                   */
/*==============================================================*/
create unique index PONTOS_INTERESSE_PK on PONTOS_INTERESSE (
ID_PONTO_INTERESSE
);

/*==============================================================*/
/* Index: SAO_FK                                                */
/*==============================================================*/
create  index SAO_FK on PONTOS_INTERESSE (
ID_TIPO_PONTO_INTERESSE
);

/*==============================================================*/
/* Index: LOCALIZAR_FK                                          */
/*==============================================================*/
create  index LOCALIZAR_FK on PONTOS_INTERESSE (
ID_REGIAO
);

/*==============================================================*/
/* Index: VISITAR_FK                                            */
/*==============================================================*/
create  index VISITAR_FK on PONTOS_INTERESSE (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: RECOMPENSAS                                           */
/*==============================================================*/
create table RECOMPENSAS (
   ID_RECOMPENSA        INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   RECOMPENSA           VARCHAR(50)          not null,
   DESCRICAO            TEXT                 null,
   NUM_PONTOS           INT4                 null,
   DISPONIVEL           BOOL                 not null,
   VALIDADE             INT4                 null,
   constraint PK_RECOMPENSAS primary key (ID_RECOMPENSA)
);

/*==============================================================*/
/* Index: RECOMPENSAS_PK                                        */
/*==============================================================*/
create unique index RECOMPENSAS_PK on RECOMPENSAS (
ID_RECOMPENSA
);

/*==============================================================*/
/* Index: INSERIR_FK                                            */
/*==============================================================*/
create  index INSERIR_FK on RECOMPENSAS (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: REGIOES                                               */
/*==============================================================*/
create table REGIOES (
   ID_REGIAO            INT4                 not null,
   ID_UTILIZADOR        INT4                 null,
   REGIAO               VARCHAR(100)         not null,
   FOTOGRAFIA_1         VARCHAR(1024)        null,
   constraint PK_REGIOES primary key (ID_REGIAO)
);

/*==============================================================*/
/* Index: REGIOES_PK                                            */
/*==============================================================*/
create unique index REGIOES_PK on REGIOES (
ID_REGIAO
);

/*==============================================================*/
/* Index: CONTROLAR_FK                                          */
/*==============================================================*/
create  index CONTROLAR_FK on REGIOES (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: RESERVAS                                              */
/*==============================================================*/
create table RESERVAS (
   ID_RESERVA           INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   ID_VISITA            INT4                 not null,
   NUM_VAGAS            INT4                 null,
   PRESENCA             BOOL                 null,
   DATA_RESERVA         DATE                 null,
   DATA_ANULACAO_RESERVA DATE                 null,
   DATA_VISITA          DATE                 null,
   constraint PK_RESERVAS primary key (ID_RESERVA)
);

/*==============================================================*/
/* Index: RESERVAS_PK                                           */
/*==============================================================*/
create unique index RESERVAS_PK on RESERVAS (
ID_RESERVA
);

/*==============================================================*/
/* Index: CRIAR_FK                                              */
/*==============================================================*/
create  index CRIAR_FK on RESERVAS (
ID_UTILIZADOR
);

/*==============================================================*/
/* Index: CONFIRMAR_FK                                          */
/*==============================================================*/
create  index CONFIRMAR_FK on RESERVAS (
ID_VISITA
);

/*==============================================================*/
/* Table: TIPOS_PONTOS_INTERESSE                                */
/*==============================================================*/
create table TIPOS_PONTOS_INTERESSE (
   ID_TIPO_PONTO_INTERESSE INT4                 not null,
   TIPO_PONTO_INTERESSE VARCHAR(100)         not null,
   constraint PK_TIPOS_PONTOS_INTERESSE primary key (ID_TIPO_PONTO_INTERESSE)
);

/*==============================================================*/
/* Index: TIPOS_PONTOS_INTERESSE_PK                             */
/*==============================================================*/
create unique index TIPOS_PONTOS_INTERESSE_PK on TIPOS_PONTOS_INTERESSE (
ID_TIPO_PONTO_INTERESSE
);

/*==============================================================*/
/* Table: UTILIZADORES                                          */
/*==============================================================*/
create table UTILIZADORES (
   ID_UTILIZADOR        INT4                 not null,
   ID_ROLE              INT4                 not null,
   NOME                 VARCHAR(250)         not null,
   EMAIL                VARCHAR(150)         not null,
   NIF                  VARCHAR(9)           null,
   PONTOS               INT4                 null,
   FOTOGRAFIA           VARCHAR(1024)        null,
   DATA_NASCIMENTO      DATE                 null,
   ESTADO               BOOL                 null,
   DATA_ATIVACAO        DATE                 null,
   DATA_DESATIVACAO     DATE                 null,
   constraint PK_UTILIZADORES primary key (ID_UTILIZADOR)
);

/*==============================================================*/
/* Index: UTILIZADORES_PK                                       */
/*==============================================================*/
create unique index UTILIZADORES_PK on UTILIZADORES (
ID_UTILIZADOR
);

/*==============================================================*/
/* Index: EXECUTAR_FK                                           */
/*==============================================================*/
create  index EXECUTAR_FK on UTILIZADORES (
ID_ROLE
);

/*==============================================================*/
/* Table: UTILIZADORES_CODIGOS                                  */
/*==============================================================*/
create table UTILIZADORES_CODIGOS (
   ID_UTILIZADORES_CODIGO INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   constraint PK_UTILIZADORES_CODIGOS primary key (ID_UTILIZADORES_CODIGO)
);

/*==============================================================*/
/* Index: UTILIZADORES_CODIGOS_PK                               */
/*==============================================================*/
create unique index UTILIZADORES_CODIGOS_PK on UTILIZADORES_CODIGOS (
ID_UTILIZADORES_CODIGO
);

/*==============================================================*/
/* Index: ESTADO_FK                                             */
/*==============================================================*/
create  index ESTADO_FK on UTILIZADORES_CODIGOS (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: UTILIZADORES_ROLES                                    */
/*==============================================================*/
create table UTILIZADORES_ROLES (
   ID_ROLE              INT4                 not null,
   ROLE                 VARCHAR(50)          not null,
   constraint PK_UTILIZADORES_ROLES primary key (ID_ROLE)
);

/*==============================================================*/
/* Index: UTILIZADORES_ROLES_PK                                 */
/*==============================================================*/
create unique index UTILIZADORES_ROLES_PK on UTILIZADORES_ROLES (
ID_ROLE
);

/*==============================================================*/
/* Table: VISITAS                                               */
/*==============================================================*/
create table VISITAS (
   ID_VISITA            INT4                 not null,
   ID_PONTO_INTERESSE   INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   DATA_VISITA          DATE                 null,
   VAGAS                INT4                 null,
   constraint PK_VISITAS primary key (ID_VISITA)
);

/*==============================================================*/
/* Index: VISITAS_PK                                            */
/*==============================================================*/
create unique index VISITAS_PK on VISITAS (
ID_VISITA
);

/*==============================================================*/
/* Index: TEM_FK                                                */
/*==============================================================*/
create  index TEM_FK on VISITAS (
ID_PONTO_INTERESSE
);

/*==============================================================*/
/* Index: AGENDAR_FK                                            */
/*==============================================================*/
create  index AGENDAR_FK on VISITAS (
ID_UTILIZADOR
);

/*==============================================================*/
/* Table: VOUCHER                                               */
/*==============================================================*/
create table VOUCHER (
   ID_VOUCHER           INT4                 not null,
   ID_UTILIZADOR        INT4                 not null,
   ID_RECOMPENSA        INT4                 not null,
   QRCODE               VARCHAR(50)          null,
   DATA_EMISSAO         DATE                 null,
   DATA_VALIDADE        DATE                 null,
   DATA_REMISSAO        DATE                 null,
   constraint PK_VOUCHER primary key (ID_VOUCHER)
);

/*==============================================================*/
/* Index: VOUCHER_PK                                            */
/*==============================================================*/
create unique index VOUCHER_PK on VOUCHER (
ID_VOUCHER
);

/*==============================================================*/
/* Index: USUFRUIR_FK                                           */
/*==============================================================*/
create  index USUFRUIR_FK on VOUCHER (
ID_UTILIZADOR
);

/*==============================================================*/
/* Index: GANHAR_FK                                             */
/*==============================================================*/
create  index GANHAR_FK on VOUCHER (
ID_RECOMPENSA
);

alter table FAVORITOS
   add constraint FK_FAVORITO_ADICIONA_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table FAVORITOS
   add constraint FK_FAVORITO_INTERESSE_PONTOS_I foreign key (ID_PONTO_INTERESSE)
      references PONTOS_INTERESSE (ID_PONTO_INTERESSE)
      on delete restrict on update restrict;

alter table LANDING_PAGE
   add constraint FK_LANDING__ATUALIZAR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table LUGAR
   add constraint FK_LUGAR_LUGAR_PONTOS_I foreign key (ID_PONTO_INTERESSE)
      references PONTOS_INTERESSE (ID_PONTO_INTERESSE)
      on delete restrict on update restrict;

alter table LUGAR
   add constraint FK_LUGAR_LUGAR2_RESERVAS foreign key (ID_RESERVA)
      references RESERVAS (ID_RESERVA)
      on delete restrict on update restrict;

alter table PONTOS_INTERESSE
   add constraint FK_PONTOS_I_LOCALIZAR_REGIOES foreign key (ID_REGIAO)
      references REGIOES (ID_REGIAO)
      on delete restrict on update restrict;

alter table PONTOS_INTERESSE
   add constraint FK_PONTOS_I_SAO_TIPOS_PO foreign key (ID_TIPO_PONTO_INTERESSE)
      references TIPOS_PONTOS_INTERESSE (ID_TIPO_PONTO_INTERESSE)
      on delete restrict on update restrict;

alter table PONTOS_INTERESSE
   add constraint FK_PONTOS_I_VISITAR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table RECOMPENSAS
   add constraint FK_RECOMPEN_INSERIR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table REGIOES
   add constraint FK_REGIOES_CONTROLAR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table RESERVAS
   add constraint FK_RESERVAS_CONFIRMAR_VISITAS foreign key (ID_VISITA)
      references VISITAS (ID_VISITA)
      on delete restrict on update restrict;

alter table RESERVAS
   add constraint FK_RESERVAS_CRIAR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table UTILIZADORES
   add constraint FK_UTILIZAD_EXECUTAR_UTILIZAD foreign key (ID_ROLE)
      references UTILIZADORES_ROLES (ID_ROLE)
      on delete restrict on update restrict;

alter table UTILIZADORES_CODIGOS
   add constraint FK_UTILIZAD_ESTADO_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table VISITAS
   add constraint FK_VISITAS_AGENDAR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

alter table VISITAS
   add constraint FK_VISITAS_TEM_PONTOS_I foreign key (ID_PONTO_INTERESSE)
      references PONTOS_INTERESSE (ID_PONTO_INTERESSE)
      on delete restrict on update restrict;

alter table VOUCHER
   add constraint FK_VOUCHER_GANHAR_RECOMPEN foreign key (ID_RECOMPENSA)
      references RECOMPENSAS (ID_RECOMPENSA)
      on delete restrict on update restrict;

alter table VOUCHER
   add constraint FK_VOUCHER_USUFRUIR_UTILIZAD foreign key (ID_UTILIZADOR)
      references UTILIZADORES (ID_UTILIZADOR)
      on delete restrict on update restrict;

