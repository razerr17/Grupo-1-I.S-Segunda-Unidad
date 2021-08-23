import { getConnection,sql,queries } from "../database";
//
export const getEstudiantes=async (req,res)=>{
    try{
        const pool=await getConnection()
        const result=await pool.request().query(queries.getAllEstudiantes);
        console.log(result);  
        res.json(result.recordset)
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const getEstudianteById=async (req,res)=>{
    try{
        const { id }=req.params;
        const pool=await getConnection();
        const result=await pool.request().input("IDEstudiante",sql.VarChar,id)
        .query(queries.getEstudianteById);
        console.log(result);  
        res.json(result.recordset);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const addEstudiante=async (req,res)=>{
    try{
        const {IDEstudiante,Nombres,ApPaterno,ApMaterno,Email,Direccion,Celular}=req.body;
        const pool=await getConnection();
        await pool.request()
            .input("IDEstudiante",sql.VarChar,IDEstudiante)
            .input("Nombres",sql.VarChar,Nombres)
            .input("ApPaterno",sql.VarChar,ApPaterno)
            .input("ApMaterno",sql.VarChar,ApMaterno)
            .input("Email",sql.VarChar,Email)
            .input("Direccion",sql.VarChar,Direccion)
            .input("Celular",sql.VarChar,Celular)
            .query(queries.addNewEstudiantes);
        res.json({IDEstudiante,Nombres,ApPaterno,ApMaterno,Email,Direccion,Celular});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const updateEstudianteById=async (req,res)=>{
    try{
        const {id}=req.params;
        const {Nombres,ApPaterno,ApMaterno,Email,Direccion,Celular}=req.body;
        const pool=await getConnection();
        await pool.request()
            .input("IDEstudiante",sql.VarChar,id)
            .input("Nombres",sql.VarChar,Nombres)
            .input("ApPaterno",sql.VarChar,ApPaterno)
            .input("ApMaterno",sql.VarChar,ApMaterno)
            .input("Email",sql.VarChar,Email)
            .input("Direccion",sql.VarChar,Direccion)
            .input("Celular",sql.VarChar,Celular)
            .query(queries.updateEstudianteById);
        res.json({id,Nombres,ApPaterno,ApMaterno,Email,Direccion,Celular});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};
export const deleteEstudianteById=async (req,res)=>{
    try{
        const {id}=req.params;
        const pool=await getConnection();
        await pool.request()
            .input("IDEstudiante",sql.VarChar,id)
            .query(queries.deleteEstudianteById);
        res.json({id});
        console.log("Se elimino el usuario");
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};