import { getConnection,sql,queries } from "../database";
//peticiones a la base de datos se detalla la funcionalidad en Estudiantes.routes.js
export const getDocentes=async (req,res)=>{
    try{
        const pool=await getConnection()
        const result=await pool.request().query(queries.getAllDocentes);
        console.log("getDocentes executed");  
        res.json(result.recordset)
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const getDocenteById=async (req,res)=>{
    try{
        const { id }=req.params;
        const pool=await getConnection();
        const result=await pool.request().input("IDDocente",sql.VarChar,id)
        .query(queries.getDocenteById);
        console.log('getDocenteById executed',id);  
        res.json(result.recordset);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const addDocente=async (req,res)=>{
    try{
        const {IDDocente,Nombre,DNI,Correo,Celular,Direccion}=req.body;
        const pool=await getConnection();
        await pool.request()
            .input("IDDocente",sql.VarChar,IDDocente)
            .input("Nombre",sql.VarChar,Nombre)
            .input("DNI",sql.VarChar,DNI)
            .input("Correo",sql.VarChar,Correo)
            .input("Celular",sql.VarChar,Celular)
            .input("Direccion",sql.VarChar,Direccion)
            .query(queries.addNewDocente);
        console.log('addDocente executed',IDDocente)
        res.json({IDDocente,Nombre,DNI,Correo,Celular,Direccion});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const updateDocenteById=async (req,res)=>{
    try{
        const {id}=req.params;
        const {Nombre,DNI,Correo,Celular,Direccion}=req.body;
        const pool=await getConnection();
        await pool.request()
            .input("IDDocente",sql.VarChar,id)
            .input("Nombre",sql.VarChar,Nombre)
            .input("DNI",sql.VarChar,DNI)
            .input("Correo",sql.VarChar,Correo)
            .input("Celular",sql.VarChar,Celular)
            .input("Direccion",sql.VarChar,Direccion)
            .query(queries.updateDocenteById);
        console.log('updateDocenteById executed',id)
        res.json({id,Nombre,DNI,Correo,Celular,Direccion});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const deleteDocenteById=async (req,res)=>{
    try{
        const {id}=req.params;
        const pool=await getConnection();
        await pool.request()
            .input("IDDocente",sql.VarChar,id)
            .query(queries.deleteDocenteById);
        res.json({id});
        console.log("Se elimino el docente",id);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};