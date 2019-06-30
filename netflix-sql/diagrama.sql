create database citas;
​USE citas;


CREATE TABLE Pacientes
(
	PacIdentificacion char(10) NOT NULL,
    PacNombres varchar (50) NOT NULL,
    PacApellidos varchar(50) NOT NULL,
    PacFechaNacimiento date NOT NULL,
    PacSexo char (1) NOT NULL,
 CONSTRAINT PK_Pacientes PRIMARY KEY CLUSTERED (PacIdentificacion ASC)
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  );
