import { Router } from "express";
import { addCoordinador, deleteCoordinadorById, deleteCoordinadorId, getCoordinadorById, getCoordinadorId, getCoordinador, updateCoordinadorById, updateCoordinadorId } from "../controllers/Coordinador.controllers";

const router = Router();

router.get('/Coordinador', getCoordinador);

router.get('/Coordinador/:id', getCoordinadorById);

router.post('/Coordinador', addCoordinador);

router.put('/Coordinador/:id', updateCoordinadorById);

router.delete('/Coordinador/:id', deleteCoordinadorById);



export default router;