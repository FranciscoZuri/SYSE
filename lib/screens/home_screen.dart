

import 'package:flutter/material.dart';
import 'package:syse_desarrollo/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName ='Home';


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Opciones'),
        backgroundColor: Colors.grey,
      ),
      drawer: const SideMenu(),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(20.0),
                child: Text("Bienvenido Alumno", style:  TextStyle(color: Colors.white, fontSize: 30.0),),)
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Calendario", "CAL"),
                  _boton("Control de Acceso", "C_A")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Notificaciones", "NOTIF"),
                  _boton("Cita", "CTA")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Configuracion", "CONF"),
                  _boton("Actividades", "ACTIV")
                ],
              )
              
          ],) ),

      
    ); 
  }
}


Widget _boton (String nombre, String acronimo){
  return InkWell(
    child: Container(
      width: 170,
      height: 170,
      child: Card(
        margin: const EdgeInsets.all(20.0),
        color: Colors.greenAccent,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
          ),
          elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(acronimo, style: TextStyle(color: Colors.white, fontSize: 30.0),),
          Text(nombre, style: TextStyle(color: Colors.white, fontSize: 10.0))
        ],
        ),
      ),    
    ),
  );
}
