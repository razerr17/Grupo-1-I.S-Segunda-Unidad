import { config } from "dotenv"
config();
export default {
    port: process.env.PORT || 4000,
    dbUser: process.env.DB_USER || 'jhom',
    dbPassword: process.env.DB_PASSWORD || 'cocodrilo10',
    dbServer: process.env.DB_SERVER || 'LAPTOP-T0A9SMMC',
    dbDatabase: process.env.DB_DATABASE || 'DBTutoria'
};