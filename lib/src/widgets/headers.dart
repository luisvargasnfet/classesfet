import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Cuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      color: Color(0xff58E036)
      
    );
  }
}

class Bordenube extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff58E036),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80),
        )
      )
    );
  }
}

class Diagonal extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _Diagonal(),
      ),
    );
  }
}

class _Diagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final dibujo = new Paint();

    dibujo.color = Color(0xff58E036);
    dibujo.style = PaintingStyle.fill;
    dibujo.strokeWidth = 20;

    final path = new Path();

    path.moveTo(0, size.height * 0.50 );
    path.lineTo(size.width, size.height * 0.30 );
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0);

    canvas.drawPath(path, dibujo);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
  
}


class Figura extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _Figura(),
      ),
    );
  }
}

class _Figura extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final dibujo = new Paint();

    dibujo.color = Color(0xff58E036);
    dibujo.style = PaintingStyle.fill;
    dibujo.strokeWidth = 20;

    final path = new Path();

    path.moveTo(0 , size.height * 0 );
    path.lineTo(size.width *0.50 , size.height * 0.50 );
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0);

    canvas.drawPath(path, dibujo);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}

class Lab extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _Lab(),
      ),
    );
  }
}

class _Lab extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final dibujo = new Paint();

    dibujo.color = Color(0xff58E036);
    dibujo.style = PaintingStyle.fill;
    dibujo.strokeWidth = 20;

    final path = new Path();

    //path.moveTo(0 , size.height * 0.50 );
    
    path.lineTo( 0  , size.height* 0.25 );
    path.quadraticBezierTo( size.width * 0.5 , size.height *0.4 , size.width , size.height * 0.25);
    

    
    //path.lineTo( size.width , size.height * 0.25 );
    //path.lineTo( size.width  , size.height * 0.25 );
    path.lineTo( size.width , 0);

    canvas.drawPath(path, dibujo);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}


