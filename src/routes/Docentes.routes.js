import { Router } from "express";
import {addDocente, deleteDocenteById, getDocenteById, getDocentes, updateDocenteById,} from '../controllers/Docentes.crontrollers'
//DOCENTES ROUTES
//importamos la funcion router para el enrutado
const router=Router();
//funcion para obtener todos los docente
router.get('/docentes',getDocentes);
//funcion para obtener una docente por id 
router.get('/docentes/:id',getDocenteById);
//funcion para agregar un docente nuevo
router.post('/docentes',addDocente);
//funcion para actualizar un docente por ID
router.put('/docentes/:id',updateDocenteById);
//funcion para eliminar un docente por ID
//riesgo si se elimina estudiante se deben implementar funciones
//en cascada para eliminar correctamente
router.delete('/docentes/:id',deleteDocenteById);
export default router;