export const queries = {
    //Queries de Coordinador
    getAllCoordinador: "Select * from TCoordinadorTutoria",
    getCoordinadorById: "Select * from TCoordinadorTutoria where IDCoordinadorTutoria=@IDCoordinadorTutoria",
    addNewCoordinador: "Insert into TCoordinadorTutoria Values (@IDCoordinadorTutoria,@IDDocente,@periodo)",
    deleteCoordinadorById: "delete from TCoordinadorTutoria where IDCoordinadorTutoria=@IDCoordinadorTutoria",
    updateCoordinadorById: "update TCoordinadorTutoria set IDCoordinadorTutoria=@IDCoordinadorTutoria,IDDocente=@IDDocente,periodo=@periodo where IDCoordinadorTutoria=@IDCoordinadorTutoria",
    //Queries de Estudiante
    getAllEstudiantes: "Select * from TEstudiante",
    getEstudianteById: "Select * from TEstudiante where IDEstudiante=@IDEstudiante",
    addNewEstudiantes: "Insert into TEstudiante Values (@IDEstudiante,@Nombres,@ApPaterno,@ApMaterno,@Email,@Direccion,@Celular)",
    deleteEstudianteById: "delete from TEstudiante where IDEstudiante=@IDEstudiante",
    updateEstudianteById: "update TEstudiante set IDEstudiante=@IDEstudiante,Nombres=@Nombres,ApPaterno=@ApPaterno,ApMaterno=@ApMaterno,Email=@Email,Direccion=@Direccion,Celular=@Celular where IDEstudiante=@IDEstudiante",
    //Queries de Tutor
    getAllTutor: "Select * from TTutor",
    getTutorById: "Select * from TTutor where IDTutor=@IDTutor",
    addNewTutor: "Insert into TTutor Values (@IDTutor,@Tutorados,@IDDocente)",
    deleteTutorById: "delete from TTutor where IDTutor=@IDTutor",
    updateTutorById: "update TTutor set IDTutor=@IDTutor,Tutorados=@Tutorados,IDDocente=@IDDocente  where IDTutor=@IDTutor",
}