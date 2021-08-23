import express from 'express'
import config from './config'

import estudiantesRoutes from './routes/Estudiantes.routes'

const app=express();

//settings
app.set('port',config.port);

//middlewares
app.use(express.json());//para poder recibir json desde el cliente
app.use(express.urlencoded({extended:false}));//para poder recibir datos de form de html

//port
app.use(estudiantesRoutes);
export default app;