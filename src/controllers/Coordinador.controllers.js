import { getConnection, sql, queries } from "../database";
//
export const getCoordinador = async(req, res) => {
    try {
        const pool = await getConnection()
        const result = await pool.request().query(queries.getAllCoordinador);
        console.log(result);
        res.json(result.recordset)
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const getCoordinadorById = async(req, res) => {
    try {
        const { id } = req.params;
        const pool = await getConnection();
        const result = await pool.request().input("IDCoordinadorTutoria", sql.VarChar, id)
            .query(queries.getCoordinadorById);
        console.log(result);
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const addCoordinador = async(req, res) => {
    try {
        const { IDCoordinadorTutoria, IDDocente, Periodo } = req.body;
        const pool = await getConnection();
        await pool.request()
            .input("IDCoordinadorTutoria", sql.VarChar, IDCoordinadorTutoria)
            .input("IDDocente", sql.VarChar, IDDocente)
            .input("Periodo", sql.VarChar, Periodo)
            .query(queries.addNewCoordinador);
        res.json({ IDCoordinadorTutoria, IDDocente, Periodo });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const updateCoordinadorById = async(req, res) => {
    try {
        const { id } = req.params;
        const { IDCoordinadorTutoria, IDDocente, Periodo } = req.body;
        const pool = await getConnection();
        await pool.request()
            .input("IDCoordinadorTutoria", sql.VarChar, IDCoordinadorTutoria)
            .input("IDDocente", sql.VarChar, IDDocente)
            .input("Periodo", sql.VarChar, Periodo)
            .query(queries.updateCoordinadorById);
        res.json({ IDCoordinadorTutoria, IDDocente, Periodo });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const deleteCoordinadorById = async(req, res) => {
    try {
        const { id } = req.params;
        const pool = await getConnection();
        await pool.request()
            .input("IDCoordinadorTutoria", sql.VarChar, id)
            .query(queries.deleteCoordinadorById);
        res.json({ id });
        console.log("Se elimino el Coordinador");
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};