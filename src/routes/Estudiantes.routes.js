import { Router } from "express";
import { addEstudiante, deleteEstudianteById, deleteEstudianteId, getEstudianteById, getEstudianteId, getEstudiantes, updateEstudianteById, updateEstudianteId } from "../controllers/Estudiantes.controllers";

const router=Router();

router.get('/estudiantes',getEstudiantes);

router.get('/estudiantes/:id',getEstudianteById);

router.post('/estudiantes',addEstudiante);

router.put('/estudiantes/:id',updateEstudianteById);

router.delete('/estudiantes/:id',deleteEstudianteById);



export default router;