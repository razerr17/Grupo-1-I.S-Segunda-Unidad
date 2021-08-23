export const queries={
    getAllEstudiantes:"Select * from TEstudiante",
    getEstudianteById:"Select * from TEstudiante where IDEstudiante=@IDEstudiante",
    addNewEstudiantes:"Insert into TEstudiante Values (@IDEstudiante,@Nombres,@ApPaterno,@ApMaterno,@Email,@Direccion,@Celular)",
    deleteEstudianteById:"delete from TEstudiante where IDEstudiante=@IDEstudiante",
    updateEstudianteById:"update TEstudiante set IDEstudiante=@IDEstudiante,Nombres=@Nombres,ApPaterno=@ApPaterno,ApMaterno=@ApMaterno,Email=@Email,Direccion=@Direccion,Celular=@Celular where IDEstudiante=@IDEstudiante"
}