/*Criando o banco*/
CREATE DATABASE clinicaVet;
GO

/*TABELA*/
CREATE TABLE clinica(
	idclinica INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (100) NOT NULL,
	endereco VARCHAR (20)
);
/*TABELA MATERIA*/
CREATE TABLE veterinario(
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL

);
/*TABELA MATERIA*/
CREATE TABLE dono(
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL

);
/*TABELA TRABALHO*/
CREATE TABLE pets(
	IdPets INT PRIMARY KEY IDENTITY NOT NULL,
	--CHAMANDO CHAVES ESTRANGEIRAS
	IdDono INT FOREIGN KEY REFERENCES dono (IdDono)
);
/*TABELA TRABALHO*/
CREATE TABLE atendimento(
	IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
	--CHAMANDO CHAVES ESTRANGEIRAS
	IdPets INT FOREIGN KEY REFERENCES pets (IdPets),
	IdVeterinario INT FOREIGN KEY REFERENCES veterinario (IdVeterinario)

);
CREATE TABLE racas(
	IdRacas INT PRIMARY KEY IDENTITY NOT NUll

);
CREATE TABLE tipopet(
	IdPets INT PRIMARY KEY IDENTITY NOT NUll

);