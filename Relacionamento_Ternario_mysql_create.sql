CREATE TABLE `Paciente` (
	`IdPaciente` BINARY NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IdPaciente`)
);

CREATE TABLE `Medico` (
	`IdMedico` BINARY NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IdMedico`)
);

CREATE TABLE `Exame` (
	`IdExame` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IdExame`)
);

CREATE TABLE `Consulta` (
	`IdConsulta` BINARY NOT NULL AUTO_INCREMENT,
	`IdMedico` BINARY NOT NULL,
	`IdPaciente` BINARY NOT NULL,
	`IdExame` BINARY NOT NULL,
	PRIMARY KEY (`IdConsulta`)
);

ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk0` FOREIGN KEY (`IdMedico`) REFERENCES `Medico`(`IdMedico`);

ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk1` FOREIGN KEY (`IdPaciente`) REFERENCES `Paciente`(`IdPaciente`);

ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk2` FOREIGN KEY (`IdExame`) REFERENCES `Exame`(`IdExame`);





