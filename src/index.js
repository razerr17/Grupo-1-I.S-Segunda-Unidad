import app from './app';
//Conexion de la app con el servidor
app.listen(app.get('port'));

console.log('server on port',app.get('port'));   