import express from 'express'
import config from './config'


import CoordinadorRoutes from './routes/Coordinador.routes'
import EstudianteRoutes from './routes/Estudiante.routes'
import TutorRoutes from './routes/Tutor.routes'
const app = express();

//settings
app.set('port', config.port);

//middlewares
app.use(express.json()); //para poder recibir json desde el cliente
app.use(express.urlencoded({ extended: false })); //para poder recibir datos de form de html

//port
app.use(CoordinadorRoutes, EstudianteRoutes, TutorRoutes);
export default app;