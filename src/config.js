import { config } from "dotenv"
config();
//configuracion de los parametros en variables de entorno
export default{
    port:process.env.PORT || 5000,
    dbUser:process.env.DB_USER || '',
    dbPassword:process.env.DB_PASSWORD || '',
    dbServer:process.env.DB_SERVER || '',
    dbDatabase:process.env.DB_DATABASE || ''
};