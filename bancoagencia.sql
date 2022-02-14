drop schema agencia_crud;

create schema agencia_crud;

use agencia_crud;

CREATE TABLE usuario (
    idUsuario int primary key auto_increment,
    nome varchar(15),
    sobrenome varchar(15),
    cpf varchar(14),
    sexo char(9),
    dataNascimento date,
    telefone varchar(11),
    email varchar(50),
    senha varchar(8)
);

CREATE TABLE destino (
    idDestino int primary key auto_increment,
    descricao varchar(30),
    valor float
);

CREATE TABLE viaja (
    idViagem int primary key auto_increment,
    dataPartida date,
    dataRetorno date,
    transporte varchar(6),
    destino varchar(50),
    fk_destino_idDestino int,
    fk_usuario_idUsuario int
);
 
ALTER TABLE viaja ADD CONSTRAINT FK_viaja_1
    FOREIGN KEY (fk_usuario_idUsuario)
    REFERENCES usuario (idUsuario)
    ON DELETE RESTRICT;
 
ALTER TABLE viaja ADD CONSTRAINT FK_viaja_2
    FOREIGN KEY (fk_destino_idDestino)
    REFERENCES destino (idDestino)
    ON DELETE RESTRICT;
    
select * from usuario;

select * from destino;

delete from destino where idDestino = 4;

select* from viaja;
describe viaja;

select idViagem, idUsuario from viaja, usuario where fk_usuarios_idUsuario = idUsuario;