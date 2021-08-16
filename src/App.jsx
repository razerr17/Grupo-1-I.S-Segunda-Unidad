import './App.css';
import Main from './components/main';
import LoginMenu from './components/log_menu';
import LoginTutorados  from './Tutorados/LoginTutorados';
import LoginTutor  from './Tutor/LoginTutor';
import LoginAdministracion from './Administracion/LoginAdmin';
import TadoMenu from './Tutorados/TadoMenu';
import Prueba from  './components/prueba';
import TadoHorarios from './Tutorados/TadoHorarios';
import {Switch, Route, BrowserRouter} from "react-router-dom";
import TadoTutorAsignado from './Tutorados/TadoTutorAsignado';
import TadoEstudianteAsignado from './Tutorados/TadoEstudianteAsignado';
import TadoPerfil from './Tutorados/TadoPerfil';
import TutorMenu from './Tutor/TutorMenu';
import TutorEstudiantesCargo from './Tutor/TutorEstudiantesCargo';
import TutorEstudiantesAyudantes from './Tutor/TutorEstudiantesAyudantes';
import TutorInformeQuincenal from './Tutor/TutorInformeQuincenal';
import TutorInformeSemestral from './Tutor/TutorInformeSemestral';
import TutorObtencionNotas from './Tutor/TutorObtencionNotas';
import TutorRegistrarFichaTutoria from './Tutor/TutorRegistrarFichaTutoria';
import TutorPerfil from './Tutor/TutorPerfil';


function App() {
  return (
    <div>
      <BrowserRouter>
        <Switch>
           <Route exact path="/" component={Main}/>
           <Route exact path="/Prueba" component={Prueba}/>
           <Route exact path="/LogMenu" component={LoginMenu}/>
           <Route exact path="/LoginTutorados" component={LoginTutorados}/>
           <Route exact path="/LoginTutor" component={LoginTutor}/>
           <Route exact path="/LoginAdministracion" component={LoginAdministracion}/>
           <Route exact path="/Tutorado_Menu" component={TadoMenu}/>
           <Route exact path="/Tutorado_Horarios" component={TadoHorarios}/>
           <Route exact path="/Tutorado_TutorAsignado" component={TadoTutorAsignado}/>
           <Route exact path="/Tutorado_EstudianteAsignado" component={TadoEstudianteAsignado}/>
           <Route exact path="/Tutorado_Perfil" component={TadoPerfil}/>
           <Route exact path="/Tutor_Menu" component={TutorMenu}/>
           <Route exact path="/Tutor_Estudiantes_a_cargo" component={TutorEstudiantesCargo}/>
           <Route exact path="/Tutor_Estudiantes_Ayudantes" component={TutorEstudiantesAyudantes}/>
           <Route exact path="/Tutor_Informe_Quincenal" component={TutorInformeQuincenal}/>
           <Route exact path="/Tutor_Informe_Semestral" component={TutorInformeSemestral}/>
           <Route exact path="/Tutor_Registrar_Ficha_Tutoria" component={TutorRegistrarFichaTutoria}/>
           <Route exact path="/Tutor_Obtencion_Notas" component={TutorObtencionNotas}/>
           <Route exact path="/Tutor_Perfil" component={TutorPerfil}/>
           

        </Switch>
      </BrowserRouter>
     
    </div>
  );
}

export default App;
