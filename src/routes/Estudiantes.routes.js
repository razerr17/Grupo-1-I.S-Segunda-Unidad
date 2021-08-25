import { Router } from "express";
import { addEstudiante, deleteEstudianteById, getEstudianteById, getEstudiantes, updateEstudianteById} from "../controllers/Estudiantes.controllers";

//importamos la funcion router para el enrutado
const router=Router();
//ESTUDIANTES ROUTES
//funcion para obtener todos los estudiantes
router.get('/estudiantes',getEstudiantes);
//funcion para obtener una estudiantes por id el cual es el codigo
router.get('/estudiantes/:id',getEstudianteById);
//funcion para agregar un estudiante nuevo
router.post('/estudiantes',addEstudiante);
//funcion para actualizar un estudiante por ID
router.put('/estudiantes/:id',updateEstudianteById);
//funcion para eliminar un estudiante por ID
//riesgo si se elimina estudiante se deben implementar funciones
//en cascada para eliminar correctamente
router.delete('/estudiantes/:id',deleteEstudianteById);
export default router;