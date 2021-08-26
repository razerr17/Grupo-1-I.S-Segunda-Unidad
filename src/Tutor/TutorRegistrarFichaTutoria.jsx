import React from 'react'
import Tutorbar from "../Tutor/Tutorbar"
import '../styles/TutorFIchaTutor.css'
import {Row,Col} from 'react-bootstrap'
import { makeStyles } from '@material-ui/core/styles';
import TextField from '@material-ui/core/TextField';
const useStyles = makeStyles((theme) => ({
    container: {
      display: 'flex',
      flexWrap: 'wrap',
      marginLeft: theme.spacing(5),
    },
    textField: {
      marginLeft: theme.spacing(1),
      marginRight: theme.spacing(1),
      width: 200,
    },
  }));
const TutorRegistrarFichaTutoria = () => {
    const classes = useStyles();
    return (
        <div>
            <Tutorbar/>
            <div className="contenido">
                <div className="Principal2">
                   <div className="Part1">
                       <Col>
                            <Row className="pa">
                                <Col className="col-8">
                                    <h5><b>Datos estudiante</b></h5>
                                </Col>
                                <Col className="col-1">
                                    Semestre :
                                </Col>
                                <Col className="col-2">
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                </Col>
                            </Row>
                            
                            <Row>
                            <Col className="col-2">
                                   <b>Tutorado :</b>
                                </Col>
                                <Col className="col-8">
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                </Col >
                                <Col className="col-2">
                                    <button className="btnAdd">
                                        Añadir
                                    </button>
                                </Col>
                            </Row>
                       </Col>
                       <form className="formulario1">
                           <Row>
                               <Col>
                                    <div className="in" >
                                        <label htmlFor=""><b>Codigo :</b></label>
                                        <input className="inputTShort" type="text" />
                                    </div>
                                    <div className="in">
                                        <label htmlFor=""><b>Direccion: </b></label>
                                        <input className="inputTLarge" type="text" />
                                    </div>
                                    <div className="in">
                                        <label htmlFor=""><b>Email :</b></label>
                                        <input className="inputTLarge" type="text" />
                                    </div>
                                    <div className="in">
                                        <label htmlFor=""><b>Persona Referencia :</b></label>
                                        <input className="inputTLarge" type="text" />
                                    </div>
                               </Col>
                               <Col>
                                    <div className="in">
                                        <label  htmlFor=""><b>Celular :</b></label>
                                        <input className="inputTShort" type="text" />
                                    </div>
                                    <div className="in">
                                        <label htmlFor=""><b>Celular referencia :</b></label>
                                        <input className ="inputTShort"type="text" />
                                    </div >
                                    <button className="btnSave"> <b>Guardar</b></button>
                               </Col>
                           </Row>
                       </form>
                   </div>
                   <div className="Part2">
                       <h5>Sesiones de tutoria</h5>
                       <Col>
                            <Row>
                                <Col className="col-1">
                                    <b>Fecha:</b>
                                </Col>
                                <Col className="col-4">
                                    <div>
                                        <form className={classes.container} noValidate>
                                                        <TextField
                                                            id="date"
                                                        
                                                            type="date"
                                                            className={classes.textField}
                                                            InputLabelProps={{
                                                            shrink: true,
                                                            }}
                                                        />
                                        </form>
                                    </div>
                                </Col>
                                <Col className="col-2">
                                    <b>Tipo de tutoria:</b>
                                </Col>
                                <Col className="col-4">
                                    <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                </Col>
                            </Row>
                            <Row>
                                <Col className="col-8">
                                    <div className="inputText">
                                        <div class="input-group">
                                            <span class="input-group-text bg-white">Descripcion</span>
                                            <textarea class="form-control" aria-label="Descripcion"></textarea>
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <div class="input-group">
                                                <span class="input-group-text bg-white">Referencia</span>
                                                <textarea class="form-control" aria-label="Referencia"></textarea>
                                        </div>
                                    </div>
                                </Col>
                                <Col className="col-4">
                                    <div className=" mt-5">
                                        <button className="btnGuarda"><b>Guardar</b></button>
                                    </div>
                                </Col>
                            </Row>
                       </Col>
                   </div>
                   <div className="Part3">
                   <div className="col table-scroll scrollbar"> 
                                    <table className="table table-bordered bg-light ">
                                        <thead>
                                            <tr>
                                                <th>Nro</th>
                                                <th>Curso</th>
                                                <th>Estudiante</th>
                                                <th>Detalles</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            
                                            </tr>
                                            <tr>
                                            <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                            <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                            <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>NUCLEO</td>
                                                <td>1200.00</td>
                                                <td><button>ver</button></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                   </div>
                </div>
            </div>
        </div>
    )
}

export default TutorRegistrarFichaTutoria
