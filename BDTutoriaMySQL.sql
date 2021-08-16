create database DBTutorias
use DBTutorias;
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Estudiante
--  SQLINES DEMO *** ------------------------------------------------------

-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TEstudiante
(	 -- lista de atributos
	IDEstudiante varchar(8) not null,
	Nombres	varchar(50) not null,
	ApPaterno	varchar(50) not null,
	ApMaterno	varchar(50) not null,
	Email	varchar(50) not null,
	Direccion	varchar(50) not null,
	Celular	varchar(9) not null,
	primary key (IDEstudiante)
);


--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Docente
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TDocente
(	 -- lista de atributos
	IDDocente varchar(8) not null,
	Nombre	varchar(50) not null,
	DNI	varchar(8) not null,
	Correo	varchar(50) not null,
	Celular	varchar(9) not null,
	Direccion	varchar(50) not null,
	primary key (IDDocente)
);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA EstudianteAyudante
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TEstudianteAyudante
(	 -- lista de atributos
	IDEstudianteAyudante varchar(8) not null,
	Semestre varchar(50) not null,
	Asignatura varchar(50) not null,
	EstudiantesCargo varchar(50) not null,
	IDEstudiante varchar(8) not null,

	primary key (IDEstudianteAyudante),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante)
);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA FichaTallerReforzamiento
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TFichaTallerReforzamiento
(	 -- lista de atributos
	IDFichaTallerReforzamiento varchar(8) not null,
	FechaTaller date,
	IDEstudianteAyudante varchar(8) not null,
	IDEstudiante varchar(8) not null,

	primary key (IDFichaTallerReforzamiento),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante),
	foreign key (IDEstudianteAyudante) references TEstudianteAyudante(IDEstudianteAyudante)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA CoordinadorTutoria
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TCoordinadorTutoria
(	 -- lista de atributos
	IDCoordinadorTutoria varchar(8) not null,
	IDDocente varchar(8) not null,
	Periodo varchar(50),

	primary key (IDCoordinadorTutoria),
	foreign key (IDDocente) references TDocente(IDDocente)

);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA NotificacionEstudianteCoord
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TNotificacionEstudianteCoord
(	 -- lista de atributos
	IDNotificacionEstudianteCoord varchar(8) not null,
	Descripcion varchar(50) not null,
	estado varchar(50) not null,
	Sentido varchar(50) not null,
	IDCoordinadorTutoria varchar(8) not null,
	IDEstudiante varchar(8) not null,
	primary key (IDNotificacionEstudianteCoord),
	foreign key (IDCoordinadorTutoria) references TCoordinadorTutoria(IDCoordinadorTutoria),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Tutor
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TTutor
(	 -- lista de atributos
	IDTutor varchar(8) not null,
	Tutorados varchar(50) not null,
	IDDocente varchar(8) not null,


	primary key (IDTutor),
	foreign key (IDDocente) references TDocente(IDDocente)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Notificacion_Tutor_Coordinador
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TNotificacionTutorCoord
(	 -- lista de atributos
	IDNotificacionTutorCoord varchar(8) not null,
	Descripcion varchar(50) not null,
	estado varchar(50) not null,
	Sentido varchar(50) not null,
	IDCoordinadorTutoria varchar(8) not null,
	IDTutor varchar(8) not null,

	primary key (IDNotificacionTutorCoord),
	foreign key (IDTutor) references TTutor(IDTutor),
	foreign key (IDCoordinadorTutoria) references TCoordinadorTutoria(IDCoordinadorTutoria)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Notificacion_Estudiante_Tutor
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TNotificacionEstudianteTutor
(	 -- lista de atributos
	IDNotificacionEstudianteTutor varchar(8) not null,
	Descripcion varchar(50) not null,
	estado varchar(50) not null,
	Sentido varchar(50) not null,
	IDEstudiante varchar(8) not null,
	IDTutor varchar(8) not null,

	primary key (IDNotificacionEstudianteTutor),
	foreign key (IDTutor) references TTutor(IDTutor),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA FichaTutoria
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TFichaTutoria
(	 -- lista de atributos
	IDFichaTutoria varchar(8) not null,
	Tutorados varchar(3) not null,
	Codigo varchar(8) not null,
	Celular varchar(9) not null,
	Direccion varchar(50) not null,
	Email	varchar(50) not null,
	PersonaReferenciada varchar(50) not null,
	CelularReferenciado  varchar(9) not null,
	Fecha date,
	Descripcion varchar(50) not null,
	Referencia varchar(50) not null,
	IDTutor varchar(8) not null,
	IDEstudiante varchar(8) not null,

	primary key (IDFichaTutoria),
	foreign key (IDTutor) references TTutor(IDTutor),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante)
);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA CronogramaDeTutoria
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TCronogramaDeTutoria
(	 -- lista de atributos
	Fecha date,
	LinkMeet	Varchar(50) not null,
	Descripcion Varchar(50) not null,
	IDTutor varchar(8) not null,
	
	foreign key (IDTutor) references TTutor(IDTutor)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA HorariosLibresTutor
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table THorariosLibreTutor
(	 -- lista de atributos
	Fecha date,
	Descripcion Varchar(50),
	IDTutor varchar(8) not null,
	foreign key (IDTutor) references TTutor(IDTutor)

);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA Informe
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TInforme
(	 -- lista de atributos
	IDInforme varchar(8) not null,
	Fecha date,
	primary key (IDInforme)
);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA InformeSemestral
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TInformeSemestral
(	 -- lista de atributos
	IDInformeSemestral varchar(8) not null,
	Semestre	varchar(50) not null,
	TutoradosTotal varchar(50) not null,
	CantEstudiantesTutoriaInicio	varchar(50) not null,
	CantEstudiantesTutoriaMedio varchar(50) not null,
	CantEstudiantesTutoriaFinal varchar(50) not null,
	IDInforme varchar(8) not null,
	IDTutor varchar(8) not null,

	primary key (IDInformeSemestral),
	foreign key (IDInforme) references TInforme(IDInforme),
	foreign key (IDTutor) references TTutor(IDTutor)

);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA CursoEscuela
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TCursoEscuela
(	 -- lista de atributos
	IDCurso varchar(8) not null,
	Nombre varchar (50) not null,
	Semestre varchar(50) not null,
	Credito varchar(30) not null,
	Categoria varchar (20) not null,
	Especialidad varchar(30) not null,
	-- SQLINES DEMO *** clave primaria
	primary key (IDCurso)

);
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** BLA InformeTutorado
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TInformeTutorado
(	 -- lista de atributos
	IDInformeTutorado varchar(8) not null,
	Descripcion varchar (50) not null,
	ResumenReuniones varchar (50) not null,
	Dificultades varchar (50) not null,
	IDCurso varchar(8) not null,
	IDInforme varchar(8) not null,
	IDEstudiante varchar(8) not null,

	primary key (IDInformeTutorado),
	foreign key (IDCurso) references TCursoEscuela(IDCurso),
	foreign key (IDInforme) references TInforme(IDInforme),
	foreign key (IDEstudiante) references TEstudiante(IDEstudiante)


);
--------------------------------------------------------
-- BLA ObtencionNotas
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TObtencionNotas
(	 -- lista de atributos
	IDFormularioObtNotas varchar(8) not null,
	Semestre varchar(50) not null,
	Curso varchar(30) not null,
	Estado varchar (20) not null,
	Nota Varchar(3)  not null,
	IDInformeTutorado varchar(8) not null,

	primary key (IDFormularioObtNotas),
	foreign key (IDInformeTutorado) references TInformeTutorado(IDInformeTutorado)

);

--  SQLINES DEMO *** -----------------------------------------------
-- SQLINES DEMO *** tos en la tabla estudiante --
--  SQLINES DEMO *** -----------------------------------------------
insert into TEstudiante values('140998', 'CESAR RODRIGO', 'TTITO', 'QUILCA', '140998@unsaac.edu.pe', 'Jr Geronimo', '0');
insert into TEstudiante values('171943', 'ERICK ANDREW', 'BUSTAMANTE', 'FLOREZ', '171943@unsaac.edu.pe', 'Jr 28 julio', '987452635');
insert into TEstudiante values('174908', 'VLADIMIR DANTE', 'CASILLA', 'PERCCA', '174908@unsaac.edu.pe', 'Jr Maya', '987452611');
insert into TEstudiante values('160889', 'FIORELLA SILVIA', 'CHOQUE', 'BUENO', '160889@unsaac.edu.pe', 'Jr Pedro Ruiz', '932587452');
insert into TEstudiante values('174909', 'LEYDI DIANA', 'CHOQUE', 'SARMIENTO', '174909@unsaac.edu.pe', 'Jr Mateo', '932587451');
insert into TEstudiante values('170429', 'JUAN CARLOS', 'CONDORI', 'LOPEZ', '170429@unsaac.edu.pe', 'Jr Pumacahia', '932587450');
insert into TEstudiante values('160890', 'MARKO LEUGIM', 'CORDOVA', 'CASTRO', '160890@unsaac.edu.pe', 'Calle Geronimo', '932587452');
insert into TEstudiante values('170594', 'DIEGO ALONSO', 'DORADO', 'TORRES', '170594@unsaac.edu.pe', 'Av Ricardo', '932587453');
insert into TEstudiante values('174442', 'ANGIE', 'ESCOBEDO', 'MESCCO', '174442@unsaac.edu.pe', 'Av Federico ', '932587454');
insert into TEstudiante values('171258', 'MELISSA BRIGGITE', 'ESPEJO', 'FRANCO', '171258@unsaac.edu.pe', 'Lt A ', '932587455');
insert into TEstudiante values('171061', 'CRIATIAN LUIS', 'GUEVARA', 'FERRO', '171061@unsaac.edu.pe', 'Urb Incas', '932587456');
insert into TEstudiante values('170432', 'GONZALO', 'GUTIERREZ', 'DAZA', '170432@unsaac.edu.pe', 'Jr Urb Rosales', '932587457');
insert into TEstudiante values('174911', 'ALEX HELDER', 'HUANCARA', 'CCOLQQUE', '174911@unsaac.edu.pe', 'Urb Marisca', '932587458');
insert into TEstudiante values('163845', 'VICTOR POOL', 'HUILLCA', 'HERRERA', '163845@unsaac.edu.pe', 'Av Por vivir', '932587459');
insert into TEstudiante values('160329', 'BRYAN', 'HUILLCA', 'MOZO', '160329@unsaac.edu.pe', 'Jr Gonzales', '987632541');
insert into TEstudiante values('174912', 'CARLOS EDUARDO', 'INCA', 'CRUZ', '174912@unsaac.edu.pe', 'Calle pinguino', '987632540');
insert into TEstudiante values('161368', 'CHARLIE JOEL', 'LUNA', 'CCASANI', '161368@unsaac.edu.pe', 'Jr Chavo', '987632542');
insert into TEstudiante values('170436', 'MARIELA', 'LUYCHO', 'ANCAIFURO', '170436@unsaac.edu.pe', 'Jr Belarde', '987632543');
insert into TEstudiante values('171063', 'NADIABETH DIANA', 'MALLQUI', 'APAZA', '171063@unsaac.edu.pe', 'Jr Otaku', '990623891');
insert into TEstudiante values('161369', 'WILY RODRIGO', 'MUNOZ', 'MUNOZ', '161369@unsaac.edu.pe', 'Jr Vela', '990623892');
insert into TEstudiante values('161727', 'ENIT', 'MUNOZ', 'PACHECO', '161727@unsaac.edu.pe', 'Av. gato', '990623893');
insert into TEstudiante values('171915', 'MILEYDY', 'NINANTAY', 'DIAZ', '171915@unsaac.edu.pe', 'Jr Messi', '990623894');
insert into TEstudiante values('171064', 'ABRAHAM BENJAMIN', 'ORE', 'GAMARRA', '171064@unsaac.edu.pe', 'Urb Rosales', '990623895');
insert into TEstudiante values('171916', 'RICHARD MIKHAEL', 'PEREIRA', 'CHINCHERO', '171916@unsaac.edu.pe', 'Jr 39 de julio', '990623896');
insert into TEstudiante values('174447', 'CARLOS ENRIQUE', 'QUISPE', 'CHAMBILLA', '174447@unsaac.edu.pe', 'Jr Perez', '990623897');
insert into TEstudiante values('171259', 'WIDMAR RAUL', 'QUISPE', 'LEON', '171259@unsaac.edu.pe', 'Calle Flor', '990623898');
insert into TEstudiante values('174914', 'LUIYI ANTONY', 'QUISPE', 'PALOMINO', '174914@unsaac.edu.pe', 'Calle Machi', '990623899');
insert into TEstudiante values('171570', 'EDGAR DANIEL', 'RAMOS', 'ALVAREZ', '171570@unsaac.edu.pe', 'Jr Caballero', '951263654');
insert into TEstudiante values('171068', 'RUDY RODRIGO', 'RODRIGUEZ', 'HANCCO', '171068@unsaac.edu.pe', 'Av. Peru', '951263651');
insert into TEstudiante values('124821', 'ETSON RONALDAO', 'ROJAS', 'CAHUANA', '124821@unsaac.edu.pe', 'Av. Cusco', '951263652');
insert into TEstudiante values('171805', 'CLAUDIA LUZ', 'ROJAS', 'SOTO', '171805@unsaac.edu.pe', 'Av. Arequipa', '951263653');
insert into TEstudiante values('174452', 'DANIEL EDUARDO', 'SARCO', 'JACINTO', '174452@unsaac.edu.pe', 'Av. Wiracocha', '951263655');
insert into TEstudiante values('171070', 'MELANIE INDIRA', 'SULLCA', 'PERALTA', '171070@unsaac.edu.pe', 'Urb. Magistrado', '951263656');
insert into TEstudiante values('150408', 'JHON EDWIN', 'TACUSI', 'LAROTA', '150408@unsaac.edu.pe', 'Urb. Abogado', '951263657');
insert into TEstudiante values('164249', 'ALEXANDER', 'TTITO', 'SAYA', '164249@unsaac.edu.pe', 'Urb. Teniente', '951263658');
insert into TEstudiante values('174455', 'BRIGGITTE LEONOR', 'UGARTE', 'CASTILLO', '174455@unsaac.edu.pe', 'Jr Bastida', '951263659');
insert into TEstudiante values('155183', 'JEREMYK RUFINO', 'VARGAS', 'ARQQUE', '155183@unsaac.edu.pe', 'Jr Tupac amaru', '951263650');
insert into TEstudiante values('140934', 'RONALDINHO', 'VEGA CENTENO', 'OLIVERA', '140934@unsaac.edu.pe', 'Jr Federico', '900112233');
--  SQLINES DEMO *** -----------------------------------------------
-- SQLINES DEMO *** tos en la tabla docente --
--  SQLINES DEMO *** -----------------------------------------------

insert into TDocente values('D0000', 'NILA SONIA', '23423312', 'nila.sonia@unsaac.edu.pe', '942323879','jr Perez');
insert into TDocente values('D0001','ABDON','24542345','abdon.rivas@unsaac.edu.pe','932456879','Jr Gulla');
insert into TDocente values('D0002','ANA ROCIO','24542346','ana.cardenas@unsaac.edu.pe','932456879','Av Mariano');
insert into TDocente values('D0003','DENNIS IVAN','24542347','dennis.candia@unsaac.edu.pe','932456879','Jr Tupac Amaru');
insert into TDocente values('D0004','DORIS SABINA','24542348','doris.aguirre@unsaac.edu.pe','932456879','Av. Lagos');
insert into TDocente values('D0005','EDWIN','24542349','edwincarrasco@unsaac.edu.pe','932456879','Calle Serrano');
insert into TDocente values('D0006','EFRAINA GLADYS','24542350','efraina.cutipa@unsaac.edu.pe','932456879','Urb Cholo');
insert into TDocente values('D0007','EMILIO','24542351','emiliopalomino@unsaac.edu.pe','932456879','Av Progreso');
insert into TDocente values('D0008','ENRIQUE','24542352','enrique.gamarra@unsaac.edu.pe','932456879','Jr Independencia');
insert into TDocente values('D0009','ESTHER CRISTINA','24542353','esther.pacheco@unsaac.edu.pe','932456879','Calle Lobo');
insert into TDocente values('D0010','GUZMAN','24542354','guzman.ticona@unsaac.edu.pe','932456879','Av Pedrito');
insert into TDocente values('D0011','HARLEY','24542355','harley.vera@unsaac.edu.pe','932456879','Av Mariana');
insert into TDocente values('D0012','HENRY SAMUEL','24542356','henry.duenas@unsaac.edu.pe','932456879','Jr Lore');
insert into TDocente values('D0013','HERNAN','24542357','dhernan.castaneda@unsaac.edu.pe','932456879','Jr Ciencias');
insert into TDocente values('D0014','IVAN CESAR','24542358','ivan.medrano@unsaac.edu.pe','932456879','Av Garcilaso');
insert into TDocente values('D0015','JAVIER ARTURO','24542359','javier.rozas@unsaac.edu.pe','932456879','Rosaspata');
insert into TDocente values('D2000','DAVID REAYNALDO','56606616','david.berrios@unsaac.edu.pe','987957943','Miraflores');

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla EstudianteAyudante
--  SQLINES DEMO *** ------------------------------------------------------

insert into TEstudianteAyudante values('A0001','2021-I','INGENIERIA DE SOFTWARE I','Ayudante','171063');
insert into TEstudianteAyudante values('A0002','2021-I',' BIOINFORMATICA','Ayudante','163845');
insert into TEstudianteAyudante values('A0003','2021-I','REDES DE COMPUTADORAS I','Ayudante','160889');
insert into TEstudianteAyudante values('A0004','2021-I','COMPUTACION GRAFICA II','Ayudante','140998');
insert into TEstudianteAyudante values('A0005','2021-I','ALGORITMOS AVANZADOS	','Ayudante','170436');
insert into TEstudianteAyudante values('A0006','2021-I','REDES DE COMPUTADORAS I','Ayudante','160889');
insert into TEstudianteAyudante values('A0007','2021-I','REDES DE COMPUTADORAS I','Ayudante','174909');
insert into TEstudianteAyudante values('A0008','2021-I','REDES DE COMPUTADORAS I','Ayudante','170429');
insert into TEstudianteAyudante values('A0009','2021-I','REDES DE COMPUTADORAS I','Ayudante','160329');
insert into TEstudianteAyudante values('A0010','2021-I','REDES DE COMPUTADORAS I','Ayudante','170432');


--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla FichaTallerReforzamiento
--  SQLINES DEMO *** ------------------------------------------------------
insert into TFichaTallerReforzamiento values('REF001',12/03/2021,'A0001','171063');
insert into TFichaTallerReforzamiento values('REF002',13/03/2021,'A0002','163845');
insert into TFichaTallerReforzamiento values('REF003',14/03/2021,'A0003','160889');
insert into TFichaTallerReforzamiento values('REF004',15/03/2021,'A0004','140998');
insert into TFichaTallerReforzamiento values('REF005',12/05/2021,'A0005','170436');
insert into TFichaTallerReforzamiento values('REF006',13/05/2021,'A0006','160889');
insert into TFichaTallerReforzamiento values('REF007',14/05/2021,'A0007','174909');
insert into TFichaTallerReforzamiento values('REF008',12/09/2021,'A0008','170429');
insert into TFichaTallerReforzamiento values('REF009',13/09/2021,'A0009','160329');
insert into TFichaTallerReforzamiento values('REF010',13/09/2021,'A0010','170432');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla CoordinadorTutoria
--  SQLINES DEMO *** ------------------------------------------------------
insert into TCoordinadorTutoria values('CT0001','D0000','PERIODO 1');
insert into TCoordinadorTutoria values('CT0002','D0001','PERIODO 2');
insert into TCoordinadorTutoria values('CT0003','D0002','PERIODO 3');
insert into TCoordinadorTutoria values('CT0004','D0003','PERIODO 1');
insert into TCoordinadorTutoria values('CT0005','D0004','PERIODO 2');
insert into TCoordinadorTutoria values('CT0006','D0005','PERIODO 3');
insert into TCoordinadorTutoria values('CT0007','D0006','PERIODO 2');
insert into TCoordinadorTutoria values('CT0008','D0007','PERIODO 1');
insert into TCoordinadorTutoria values('CT0009','D0008','PERIODO 3');
insert into TCoordinadorTutoria values('CT0010','D0009','PERIODO 3');

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla NotificacionEstudianteCoord
--  SQLINES DEMO *** ------------------------------------------------------
insert into TNotificacionEstudianteCoord values('NOT001','ASISTIO A TUTORIA', 'ACTIVO', 'SENTIDO I', 'CT0001', '171063');
insert into TNotificacionEstudianteCoord values('NOT002','ASISTIO A TUTORIA', 'ACTIVO', 'SENTIDO II', 'CT0002', '163845');
insert into TNotificacionEstudianteCoord values('NOT003','ASISTIO A TUTORIA', 'ACTIVO', 'SENTIDO III', 'CT0003', '160889');
insert into TNotificacionEstudianteCoord values('NOT004','ASISTIO A TUTORIA', 'ACTIVO', 'SENTIDO IV', 'CT0004', '140998');
insert into TNotificacionEstudianteCoord values('NOT005','ASISTIO A TUTORIA', 'ACTIVO', 'SENTIDO V', 'CT0005', '170436');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla Tutor
--  SQLINES DEMO *** ------------------------------------------------------
insert into TTutor values('T00001', 'TUTOR 1', 'D0011');
insert into TTutor values('T00002', 'TUTOR 2', 'D0012');
insert into TTutor values('T00003', 'TUTOR 3', 'D0013');
insert into TTutor values('T00004', 'TUTOR 4', 'D0014');
insert into TTutor values('T00005', 'TUTOR 5', 'D0015');

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla Notificacion_Tutor_Coordinador
--  SQLINES DEMO *** ------------------------------------------------------
insert into TNotificacionTutorCoord values('NTC001','DESCRIPCION 1', 'ACTIVO','SENTIDO 1','CT0001','T00001');
insert into TNotificacionTutorCoord values('NTC002','DESCRIPCION 2', 'ACTIVO','SENTIDO 2','CT0002','T00002');
insert into TNotificacionTutorCoord values('NTC003','DESCRIPCION 3', 'ACTIVO','SENTIDO 3','CT0003','T00003');
insert into TNotificacionTutorCoord values('NTC004','DESCRIPCION 4', 'ACTIVO','SENTIDO 4','CT0004','T00004');
insert into TNotificacionTutorCoord values('NTC005','DESCRIPCION 5', 'ACTIVO','SENTIDO 5','CT0005','T00005');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla Notificacion_Estudiante_Tutor
--  SQLINES DEMO *** ------------------------------------------------------
insert into TNotificacionEstudianteTutor values('NET001','DESCRIPCION 1','ACTIVO','SENTIDO 1','140998','T00001');
insert into TNotificacionEstudianteTutor values('NET002','DESCRIPCION 2','ACTIVO','SENTIDO 2','171063','T00002');
insert into TNotificacionEstudianteTutor values('NET003','DESCRIPCION 3','ACTIVO','SENTIDO 3','163845','T00003');
insert into TNotificacionEstudianteTutor values('NET004','DESCRIPCION 4','ACTIVO','SENTIDO 4','170436','T00004');
insert into TNotificacionEstudianteTutor values('NET005','DESCRIPCION 5','ACTIVO','SENTIDO 5','160889','T00005');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla FichaTutoria
--  SQLINES DEMO *** ------------------------------------------------------
insert into TFichaTutoria values('FT0001','000','COD001','999000012','Jr pro','ficha1@unsaac.edu.pe','PERSONA 1','000000000',01/05/2021,'DESCRIPCION 1', 'REFERENCIA 1','T00001','140998');
insert into TFichaTutoria values('FT0002','001','COD002','999000013','Jr bless','ficha2@unsaac.edu.pe','PERSONA 1','000000001',01/05/2021,'DESCRIPCION 2', 'REFERENCIA 2','T00002','171063');
insert into TFichaTutoria values('FT0003','002','COD003','999000014','Jr Lora','ficha3@unsaac.edu.pe','PERSONA 1','000000002',01/05/2021,'DESCRIPCION 3', 'REFERENCIA 3','T00003','163845');
insert into TFichaTutoria values('FT0004','003','COD004','999000015','Jr Corre','ficha4@unsaac.edu.pe','PERSONA 1','000000003',01/05/2021,'DESCRIPCION 4', 'REFERENCIA 4','T00004','160889');

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla CronogramaDeTutoria
--  SQLINES DEMO *** ------------------------------------------------------
insert into TCronogramaDeTutoria values(01/06/2021,'meet.google.com/zjy-epiw-frv','CLASE 1','T00001');
insert into TCronogramaDeTutoria values(01/06/2021,'meet.google.com/new-dprn-may','CLASE 2','T00002');
insert into TCronogramaDeTutoria values(01/06/2021,'meet.google.com/esn-ttvo-qaj','CLASE 3','T00003');
insert into TCronogramaDeTutoria values(01/06/2021,'meet.google.com/xnp-xggq-eax','CLASE 4','T00004');
insert into TCronogramaDeTutoria values(01/06/2021,'meet.google.com/bzx-ajbg-wpx','CLASE 5','T00005');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla HorariosLibresTutor
--  SQLINES DEMO *** ------------------------------------------------------
insert into THorariosLibreTutor values(01/06/2021,'DESCRIPCION 1','T00001');
insert into THorariosLibreTutor values(01/06/2021,'DESCRIPCION 2','T00002');
insert into THorariosLibreTutor values(01/06/2021,'DESCRIPCION 3','T00003');
insert into THorariosLibreTutor values(01/06/2021,'DESCRIPCION 4','T00004');
insert into THorariosLibreTutor values(01/06/2021,'DESCRIPCION 5','T00005');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla Informe
--  SQLINES DEMO *** ------------------------------------------------------
insert into TInforme values('INF001',18/02/2019);
insert into TInforme values('INF002',12/06/2021);
insert into TInforme values('INF003',02/03/2021);
insert into TInforme values('INF004',10/08/2021);
insert into TInforme values('INF005',20/04/2021);
insert into TInforme values('INF006',21/03/2021);
insert into TInforme values('INF007',05/05/2021);
insert into TInforme values('INF008',16/06/2021);
insert into TInforme values('INF009',17/07/2021);
insert into TInforme values('INF010',01/07/2021);

--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla InformeSemestral
--  SQLINES DEMO *** ------------------------------------------------------
insert into TInformeSemestral values('ID0001','2021-I','1','QUINCE','QUINCE','QUINCE','INF001','T00001');
insert into TInformeSemestral values('ID0002','2021-I','1','QUINCE','QUINCE','QUINCE','INF002','T00002');
insert into TInformeSemestral values('ID0003','2021-I','1','QUINCE','QUINCE','QUINCE','INF003','T00003');
insert into TInformeSemestral values('ID0004','2021-I','1','QUINCE','QUINCE','QUINCE','INF004','T00002');
insert into TInformeSemestral values('ID0005','2021-I','1','QUINCE','QUINCE','QUINCE','INF005','T00004');
insert into TInformeSemestral values('ID0006','2021-I','1','QUINCE','QUINCE','QUINCE','INF006','T00005');
insert into TInformeSemestral values('ID0007','2021-I','1','QUINCE','QUINCE','QUINCE','INF007','T00001');
insert into TInformeSemestral values('ID0008','2021-I','1','QUINCE','QUINCE','QUINCE','INF008','T00002');
insert into TInformeSemestral values('ID0009','2021-I','1','QUINCE','QUINCE','QUINCE','INF009','T00004');
insert into TInformeSemestral values('ID0010','2021-I','1','QUINCE','QUINCE','QUINCE','INF010','T00005');
--  SQLINES DEMO *** ------------------------------------------------------
-- SQLINES DEMO *** tos en la tabla CursoEscuela
--  SQLINES DEMO *** ------------------------------------------------------

insert into TCursoEscuela values('IF664', 'BIOINFORMATICA', '2021-I', '4 creditos', 'EEEP', 'BIOMEDIAS');
insert into TCursoEscuela values('IF614', 'INGENIERIA DE SOFTWARE I', '2021-I', '4 creditos', 'OEES', 'DESARROLLO');
insert into TCursoEscuela values('IF669', 'MODELADO Y SIMULACION', '2021-I', '4 creditos', 'EEEP', 'SIMULACION');
insert into TCursoEscuela values('IF482', 'PLANEAMIENTO Y DIRECCION ESTRATEGICA DE TI', '2020-II', '3 creditos', 'OEES', 'TI');
insert into TCursoEscuela values('IF710', 'SEMINARIO DE INVESTIGACION I	', '2021-I', '3 creditos', 'OEES', 'SEMINARIO');
insert into TCursoEscuela values('IF459', 'COMPUTACION GRAFICA II', '2021-I', '4 creditos', 'EEEP', 'GRAFICA');
insert into TCursoEscuela values('IF651', 'INTELIGENCIA ARTIFICIAL', '2021-I', '4 creditos', 'OEEP', 'ARTIFICIAL');
insert into TCursoEscuela values('IF613', 'DESARROLLO DE SOFTWARE I', '2021-I', '2 creditos', 'OEEP', 'DESARROLLO');
insert into TCursoEscuela values('IF552', 'REDES DE COMPUTADORAS I', '2021-I', '4 creditos', 'OEEP', 'REDES');
insert into TCursoEscuela values('IF458', 'COMPUTACI�N GR�FICA I', '2021-I', '4 creditos', 'OEEP', 'GRAFICA');
insert into TCursoEscuela values('IF612', '	FUNDAMENTOS Y DISE�O DE BASES DE DATOS', '2021-I', '4 creditos', 'OEEP', 'BASE DE DATOS');
insert into TCursoEscuela values('IF550', 'ORGANIZACI�N Y ARQUITECTURA DEL COMPUTADOR', '2021-I', '4 creditos', 'OEEP', 'ARQUITECTURA');
insert into TCursoEscuela values('IF650', 'MODELOS PROBABILISTICOS', '2021-I', '4 creditos', 'OEEP', 'PROBABILIDAD');
insert into TCursoEscuela values('IF610', 'ANALISIS Y DISE�O DE SISTEMAS DE INFORMACI�N	', '2021-I', '4 creditos', 'OEEP', 'DESARROLLO');
insert into TCursoEscuela values('IF456', 'ALGORITMOS AVANZADOS	', '2021-I', '4 creditos', 'OEEP', 'ALGORITMOS');


--  SQLINES DEMO *** ------------------------------------------------------
--  SQLINES DEMO *** os en la tabla InformeTutorado
--  SQLINES DEMO *** ------------------------------------------------------
insert into TInformeTutorado values('IDT001','DESCRIPCION 1','RESUMEN REUNION 1','FACIL','IF664','INF001','171063');
insert into TInformeTutorado values('IDT002','DESCRIPCION 2','RESUMEN REUNION 2','MEDIO','IF552','INF002','163845');
insert into TInformeTutorado values('IDT003','DESCRIPCION 3','RESUMEN REUNION 3','DIFICIL','IF550','INF003','160889');
insert into TInformeTutorado values('IDT004','DESCRIPCION 4','RESUMEN REUNION 4','DIFICIL','IF459','INF004','171805');
insert into TInformeTutorado values('IDT005','DESCRIPCION 5','RESUMEN REUNION 5','MEDIO','IF456','INF005','140934');
insert into TInformeTutorado values('IDT006','DESCRIPCION 6','RESUMEN REUNION 6','FACIL','IF610','INF006','174447');
insert into TInformeTutorado values('IDT007','DESCRIPCION 7','RESUMEN REUNION 7','MEDIO','IF482','INF007','164249');
insert into TInformeTutorado values('IDT008','DESCRIPCION 8','RESUMEN REUNION 8','DIFICIL','IF710','INF008','171259');
insert into TInformeTutorado values('IDT009','DESCRIPCION 9','RESUMEN REUNION 9','MEDIO','IF550','INF009','150408');

--  SQLINES DEMO *** ------------------------------------------------------
--  SQLINES DEMO *** os en la tabla ObtencionNotas
--  SQLINES DEMO *** ------------------------------------------------------

insert into TObtencionNotas values('NT0001','2021-I','BIOINFORMATICA','ACTIVO','14','IDT001');
insert into TObtencionNotas values('NT0002','2021-I','ALGORITMOS AVANZADOS','ACTIVO','10','IDT001');
insert into TObtencionNotas values('NT0003','2021-I','BIOINFORMATICA','ACTIVO','15','IDT002');
insert into TObtencionNotas values('NT0004','2021-I','ALGORITMOS AVANZADOS','ACTIVO','20','IDT002');
insert into TObtencionNotas values('NT0005','2021-I','ALGORITMOS AVANZADOS','ACTIVO','18','IDT003');
insert into TObtencionNotas values('NT0006','2021-I','MODELADO Y SIMULACION','ACTIVO','17','IDT004');
insert into TObtencionNotas values('NT0007','2021-I','BIOINFORMATICA','ACTIVO','16','IDT002');
insert into TObtencionNotas values('NT0008','2021-I','MODELADO Y SIMULACION','ACTIVO','01','IDT001');
insert into TObtencionNotas values('NT0009','2021-I','BIOINFORMATICA','ACTIVO','16','IDT005');
insert into TObtencionNotas values('NT0010','2021-I','BIOINFORMATICA','ACTIVO','18','IDT006');
insert into TObtencionNotas values('NT0011','2021-I','COMPUTACION GRAFICA II','ACTIVO','17','IDT006');
insert into TObtencionNotas values('NT0012','2021-I','INGENIERIA DE SOFTWARE I','ACTIVO','10','IDT007');
insert into TObtencionNotas values('NT0013','2021-I','ALGORITMOS AVANZADOS','ACTIVO','05','IDT007');
insert into TObtencionNotas values('NT0014','2021-I','INGENIERIA DE SOFTWARE I','ACTIVO','18','IDT008');
insert into TObtencionNotas values('NT0015','2021-I','MODELADO Y SIMULACION','ACTIVO','17','IDT009');
insert into TObtencionNotas values('NT0016','2021-I','INGENIERIA DE SOFTWARE I','ACTIVO','20','IDT007');
insert into TObtencionNotas values('NT0017','2021-I','INGENIERIA DE SOFTWARE I','ACTIVO','19','IDT006');
insert into TObtencionNotas values('NT0018','2021-I','MODELADO Y SIMULACION','ACTIVO','11','IDT006');
insert into TObtencionNotas values('NT0019','2021-I','COMPUTACION GRAFICA II','ACTIVO','13','IDT004');
insert into TObtencionNotas values('NT0020','2021-I','INGENIERIA DE SOFTWARE I','ACTIVO','14','IDT001');

