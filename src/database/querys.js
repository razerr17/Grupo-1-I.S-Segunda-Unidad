export const queries={
    // Queries Estudiantes
    getAllEstudiantes:"Select * from TEstudiante",
    getEstudianteById:"Select * from TEstudiante where IDEstudiante=@IDEstudiante",
    addNewEstudiantes:"Insert into TEstudiante Values (@IDEstudiante,@Nombres,@ApPaterno,@ApMaterno,@Email,@Direccion,@Celular)",
    deleteEstudianteById:"delete from TEstudiante where IDEstudiante=@IDEstudiante",
    updateEstudianteById:"update TEstudiante set IDEstudiante=@IDEstudiante,Nombres=@Nombres,ApPaterno=@ApPaterno,ApMaterno=@ApMaterno,Email=@Email,Direccion=@Direccion,Celular=@Celular where IDEstudiante=@IDEstudiante",
    // Queries Docentes
    getAllDocentes:"Select * from TDocente",
    getDocenteById:"Select * from TDocente where IDDocente=@IDDocente",
    addNewDocente:"Insert into TDocente Values (@IDDocente,@Nombre,@DNI,@Correo,@Celular,@Direccion)",
    deleteDocenteById:"delete from TDocente where IDDocente=@IDDocente",
    updateDocenteById:"update TDocente set Nombre=@Nombre,DNI=@DNI,Correo=@Correo,Celular=@Celular,Direccion=@Direccion where IDDocente=@IDDocente"
}