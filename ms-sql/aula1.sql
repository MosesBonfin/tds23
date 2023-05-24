--comando para criar banco de dados

--create database dbloja;

--vai para a proxima etapa
--go 
-- seleciona o banco de dados
--use dbloja

--create table usuario(idusuario int identity primary key,
   --nomeusuario nvarchar(30) not null,
   --senha nvarchar(255) not null,
   --datacriacao datetime default getdate());

/*create table cliente(
   idcliente int identity primary key,
   nomecliente varchar(50) not null,
   CPF varchar(15) not null,
   idade int not null,
   idusuario int foreign key references usuario("idusuario"));*/

/*create table endereco(
idendereco int identity primary key,
tipo varchar(20) not null,
logradouro varchar(100) not null,
numero varchar(10) not null,
complemento varchar(100),
cep varchar(10) not null,
bairro varchar(30) not null);

create table cliente1(
idcliente1 int identity primary key,
nomecliente1 varchar(50) not null,
cpf varchar(13) not null,
idendereco int unique,
idcontato int unique,
idusuario int unique,
datacadatro datetime default getDate()
);

create table categoria(
idcategoria int identity primary key,
nomecategoria varchar(30) not null);
create table produto(
idproduto int identity primary key,
nomeproduto varchar(100) not null,
descricao text not null,
idcategoria int,
preco decimal(10,2) not null,
datacadastro datetime default getDate());

create table estoque(
idestoque int identity primary key,
idproduto int unique,
quantidade int not null
);
create table pedido(
idpedido int identity primary key,
idusuario int,
datapedido datetime default getDate()
);

create table itenspedido(
iditenspedido int identity primary key,
idpedido int,
idproduto int,
quantidade int
);*/



-- COMANDO PARA LISTA TABELAS DO BANCO DE DADOS ATUAL
--select * from sys.tables
--use AdventureWorks2012

select * from sys.tables

select * from Person.Person
select FirstName, from Person.Person

select FirstName as PrimeiroNome,
       LastName as UltimoNome 
from Person.Person

