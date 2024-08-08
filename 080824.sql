CREATE TABLE CLIENTE(
    id_cliente number primary key,
    nome_cliente varchar2 (30) not null,
    dt_nascimento  date not null,
    cpf number (11) not null,
    id_endereco number,
    id_tipo_cliente number,
    id_genero number
);

CREATE TABLE TIPO_CLIENTE(
   ;
    descricao varchar2
);

CREATE TABLE TIPO_GENERO(
    id_genero number primary key,
    descricao varchar2
);

CREATE TABLE ENDERECO_CLIENTE(
    id_endereco int primary key,
    logradouro varchar2 not null,
    complemento varchar2,
    numero number,
    id_bairro number
);

CREATE TABLE BAIRRO(
    id_bairro number primary key,
    nome_bairro varchar2,
    id_cidade number
);

CREATE TABLE CIDADE(
    id_cidade number primary key,
    nome_cidade varchar2,
    id_estado number
);

CREATE TABLE ESTADO(
    id_estado number primary key,
    nome_estado varchar2,
    id_pais number
);

CREATE TABLE PAIS(
    id_pais number primary key,
    nome_pais varchar2
);

ALTER TABLE CLIENTE ADD CONSTRAINT FK_TIPO
FOREIGN KEY (id_tipo_cliente) REFERENCES TIPO_CLIENTE(id_tipo_cliente);