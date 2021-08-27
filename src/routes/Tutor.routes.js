import { Router } from "express";
import { addTutor, deleteTutorById, deleteTutorId, getTutorById, getTutorId, getTutor, updateTutorById, updateTutorId } from "../controllers/Tutor.controllers";

const router = Router();

router.get('/Tutor', getTutor);

router.get('/Tutor/:id', getTutorById);

router.post('/Tutor', addTutor);

router.put('/Tutor/:id', updateTutorById);

router.delete('/Tutor/:id', deleteTutorById);



export default router;