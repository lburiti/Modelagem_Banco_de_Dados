CREATE TABLE "Paciente" (
	"IdPaciente" BLOB NOT NULL,
	constraint PACIENTE_PK PRIMARY KEY ("IdPaciente"));


/
CREATE TABLE "Medico" (
	"IdMedico" BLOB NOT NULL,
	constraint MEDICO_PK PRIMARY KEY ("IdMedico"));


/
CREATE TABLE "Exame" (
	"IdExame" INT NOT NULL,
	constraint EXAME_PK PRIMARY KEY ("IdExame"));

CREATE sequence "EXAME_IDEXAME_SEQ";

CREATE trigger "BI_EXAME_IDEXAME"
  before insert on "Exame"
  for each row
begin
  select "EXAME_IDEXAME_SEQ".nextval into :NEW."IdExame" from dual;
end;

/
CREATE TABLE "Consulta" (
	"IdConsulta" BLOB NOT NULL,
	"IdMedico" BLOB NOT NULL,
	"IdPaciente" BLOB NOT NULL,
	"IdExame" BLOB NOT NULL,
	constraint CONSULTA_PK PRIMARY KEY ("IdConsulta"));


/



ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk0" FOREIGN KEY ("IdMedico") REFERENCES "Medico"("IdMedico");
ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk1" FOREIGN KEY ("IdPaciente") REFERENCES "Paciente"("IdPaciente");
ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk2" FOREIGN KEY ("IdExame") REFERENCES "Exame"("IdExame");

