import React from 'react'
import AdminBar from '../Administracion/AdminBar'
import { Col ,Row} from 'react-bootstrap'
import * as BiIcons from "react-icons/bi"
const AdminPerfil = () => {
    return (
        <div>
            <AdminBar/>
            <div className="contenido">
                    <div className="Principal2 ">
                        <img className="portada"src="./imagenes/FondoTadoPerfil.JPG" alt="" />
                        <img className="sizephoto" src="./imagenes/admin.png" alt="" />
                        <div className ="contDatos">
                            <label className="lbldatos" htmlFor=""><b>Datos Personales :</b></label>
                            <Row className=" position-relative">
                                <Col className="column1 ">
                                    <div>
                                        <label htmlFor=""><b>Nombres :  </b></label>
                                        <label className="lbldat">  MELISSA BRIGGITE</label>
                                    </div>
                                    <div>
                                        <label htmlFor=""><b>Apellidos :  </b></label>
                                        <label className="lbldat">  ESPEJO FRANCO</label>
                                    </div>
                                     <div>
                                        <label htmlFor=""><b>Email :  </b></label>
                                        <label className="lbldat"> 171258@unsaac.edu.pe</label>
                                    </div>
                                </Col>
                                <Col className="column1 ">
                                    <div>
                                        <label htmlFor=""><b>Direccion :  </b></label>
                                        <label className="lbldat"> JR. MICAELA BASTIDAS 221 - SANTIAGO</label>
                                    </div>
                                    <div>
                                        <label htmlFor=""><b>Celular :  </b></label>
                                        <label className="lbldat">  987654321</label>
                                    </div>

                                </Col>
                            </Row>
                            <button className="btnEditar">
                                Editar
                                <BiIcons.BiEdit className="iconSave"/>
                            </button>
                        </div>
                    </div>
                
            </div>
        </div>
    )
}

export default AdminPerfil
