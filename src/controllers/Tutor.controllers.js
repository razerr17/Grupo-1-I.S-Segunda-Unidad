import { getConnection, sql, queries } from "../database";
//
export const getTutor = async(req, res) => {
    try {
        const pool = await getConnection()
        const result = await pool.request().query(queries.getAllTutor);
        console.log(result);
        res.json(result.recordset)
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const getTutorById = async(req, res) => {
    try {
        const { id } = req.params;
        const pool = await getConnection();
        const result = await pool.request().input("IDTutor", sql.VarChar, id)
            .query(queries.getTutorById);
        console.log(result);
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const addTutor = async(req, res) => {
    try {
        const { IDTutor, Tutorados, IDDocente } = req.body;
        const pool = await getConnection();
        await pool.request()
            .input("IDTutor", sql.VarChar, IDTutor)
            .input("Tutorados", sql.VarChar, Tutorados)
            .input("IDDocente", sql.VarChar, IDDocente)
            .query(queries.addNewTutor);
        res.json({ IDTutor, Tutorados, IDDocente });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const updateTutorById = async(req, res) => {
    try {
        const { id } = req.params;
        const { IDTutor, Tutorados, IDDocente } = req.body;
        const pool = await getConnection();
        await pool.request()
            .input("IDTutor", sql.VarChar, IDTutor)
            .input("Tutorados", sql.VarChar, Tutorados)
            .input("IDDocente", sql.VarChar, IDDocente)
            .query(queries.updateTutorById);
        res.json({ IDTutor, Tutorados, IDDocente });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const deleteTutorById = async(req, res) => {
    try {
        const { id } = req.params;
        const pool = await getConnection();
        await pool.request()
            .input("IDTutor", sql.VarChar, id)
            .query(queries.deleteTutorById);
        res.json({ id });
        console.log("Se elimino el usuario");
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};