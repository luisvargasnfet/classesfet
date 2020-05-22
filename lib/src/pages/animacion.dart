import 'dart:html';

import 'package:flutter/material.dart';

class Animacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cuadradoanimado() , 
      ),
      
    );
  }
}

class Cuadradoanimado extends StatefulWidget {
  @override
  _CuadradoanimadoState createState() => _CuadradoanimadoState();
}

class _CuadradoanimadoState extends State<Cuadradoanimado>  {
  AnimationController controller;
  Animation<double> rotacion;

  @override
  void initState(){

    controller = new AnimationController(
      vsync: this, duration: Duration(milliseconds: 5000);

    rotacion = Tween(begin: 0.0 , end: 2.0 ).animate(controller);

    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Cubo();
  }
}

class _Cubo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      color: Colors.green
      ),  
    );
  }
}


