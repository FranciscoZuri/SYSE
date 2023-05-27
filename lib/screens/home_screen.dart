

import 'package:flutter/material.dart';
import 'package:syse_desarrollo/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName ='Home';


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: const Text('Home'),

      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Darkmode: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre de Usuario: '),
          Divider(),

      ],)
    ); 
  }
}