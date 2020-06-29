DROP DATABASE IF EXISTS basquete; 
CREATE DATABASE IF NOT EXISTS basquete; 

CREATE TABLE basquete.ator(
	cpf VARCHAR(15) NOT NULL,
	cargo VARCHAR(20) NOT NULL,
	nomeUser VARCHAR(30) NOT NULL,
	nomeCompleto VARCHAR(80) NOT NULL,
	end VARCHAR(120) NOT NULL,
	email VARCHAR(60) NOT NULL,
	tel VARCHAR(15) NOT NULL,
	PRIMARY KEY(cpf)
	);


CREATE TABLE basquete.time(
	nome VARCHAR(60) NOT NULL,
	origem VARCHAR(100) NOT NULL,
	tecnico VARCHAR(15) NOT NULL,
	PRIMARY KEY(nome),
	FOREIGN KEY(tecnico) REFERENCES ator(cpf)
 	);

CREATE TABLE basquete.senha(
	id INT(3) NOT NULL AUTO_INCREMENT,
	senhaAtual VARCHAR(160) NOT NULL,
	senhaPassada VARCHAR(160) NULL,
	userSenha VARCHAR(15) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(userSenha) REFERENCES ator(cpf)
 	);


CREATE TABLE basquete.jogador(
	cpf VARCHAR(15) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	nCamisa INT(3) NOT NULL,
	idade INT(3) NOT NULL,
	tel VARCHAR(15) NOT NULL,
	time VARCHAR(60) NOT NULL,
	PRIMARY KEY(cpf),
	FOREIGN KEY(time) REFERENCES time(nome)
	);

CREATE TABLE basquete.partidas(
	id INT(3) NOT NULL AUTO_INCREMENT,
	data VARCHAR(10) NOT NULL,
	local VARCHAR(120) NOT NULL,
	hora VARCHAR(5) NOT NULL,
	timeAdversario VARCHAR(60) NOT NULL,
	nomeTime VARCHAR(60) NOT NULL,
	nomeArbitro VARCHAR(60) NOT NULL,
	nomeApoio VARCHAR(60) NOT NULL,
	nomeAuxiliar VARCHAR(60) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(nomeTime) REFERENCES time(nome)
	);

CREATE TABLE basquete.pontos(
	id INT(3) NOT NULL AUTO_INCREMENT,
	valorPontos INT(2) NOT NULL,
	pSet INT(2) NOT NULL,
	tipo TEXT NOT NULL,
	jogador VARCHAR(15) NOT NULL,
	partida INT(3) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(jogador) REFERENCES jogador(cpf),
	FOREIGN KEY(partida) REFERENCES partidas(id)
	);

CREATE TABLE basquete.jogo(
	id INT(3) NOT NULL AUTO_INCREMENT,
	player VARCHAR(15) NOT NULL,
	parti INT(3) NOT NULL,
	times VARCHAR(60) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(player) REFERENCES jogador(cpf),
	FOREIGN KEY(parti) REFERENCES partidas(id),
	FOREIGN KEY(times) REFERENCES time(nome)
	);

CREATE TABLE basquete.resumo(
	id INT(3) NOT NULL AUTO_INCREMENT,
	somatoria INT(3) NOT NULL,
	jog VARCHAR(15) NOT NULL,
	point INT(3) NOT NULL,
	part INT(3) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(jog) REFERENCES jogador(cpf),
	FOREIGN KEY(part) REFERENCES partidas(id),
	FOREIGN KEY(point) REFERENCES pontos(id)
	);

