import { Router } from "express";

import { addTutor, deleteTutorById, deleteTutorId, getTutorById, getTutorId, getTutor, updateTutorById, updateTutorId } from "../controllers/tutor.controllers";

const router=Router();

router.get('/tutor', getTutor);

router.get('/tutor/:id', getTutorById);

router.post('/tutor', addTutor);

router.put('/tutor/:id', updateTutorById);

router.delete('/tutor/:id', deleteTutorById);

export default router;
