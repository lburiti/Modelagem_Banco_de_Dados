CREATE TABLE "public.Paciente" (
	"IdPaciente" serial NOT NULL,
	CONSTRAINT "Paciente_pk" PRIMARY KEY ("IdPaciente")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Medico" (
	"IdMedico" serial NOT NULL,
	CONSTRAINT "Medico_pk" PRIMARY KEY ("IdMedico")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Exame" (
	"IdExame" serial NOT NULL,
	CONSTRAINT "Exame_pk" PRIMARY KEY ("IdExame")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Consulta" (
	"IdConsulta" serial NOT NULL,
	"IdMedico" BINARY NOT NULL,
	"IdPaciente" BINARY NOT NULL,
	"IdExame" BINARY NOT NULL,
	CONSTRAINT "Consulta_pk" PRIMARY KEY ("IdConsulta")
) WITH (
  OIDS=FALSE
);






ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk0" FOREIGN KEY ("IdMedico") REFERENCES "Medico"("IdMedico");
ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk1" FOREIGN KEY ("IdPaciente") REFERENCES "Paciente"("IdPaciente");
ALTER TABLE "Consulta" ADD CONSTRAINT "Consulta_fk2" FOREIGN KEY ("IdExame") REFERENCES "Exame"("IdExame");





