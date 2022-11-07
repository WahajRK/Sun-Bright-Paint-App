import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'dart:math' as math;
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      width: 399.8636169433594,
      height: 397.2302551269531,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 391.605712890625,
        left: 168.31817626953125,
        child: Container(
      width: 63.18340301513672,
      height: 5.624542236328125,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 23.439006805419922,
        height: 5.624542236328125,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3),
          ),
      color : Color.fromRGBO(0, 0, 60, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 30.572538375854492,
        child: Container(
        width: 6.114522457122803,
        height: 5.624542236328125,
        decoration: BoxDecoration(
          color : Color.fromRGBO(217, 217, 226, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(6.114522457122803, 5.624542236328125)),
  )
      )
      ),Positioned(
        top: 0,
        left: 43.82059860229492,
        child: Container(
        width: 6.114522457122803,
        height: 5.624542236328125,
        decoration: BoxDecoration(
          color : Color.fromRGBO(217, 217, 226, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(6.114522457122803, 5.624542236328125)),
  )
      )
      ),Positioned(
        top: 0,
        left: 57.06890106201172,
        child: Container(
        width: 6.114522457122803,
        height: 5.624542236328125,
        decoration: BoxDecoration(
          color : Color.fromRGBO(217, 217, 226, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(6.114522457122803, 5.624542236328125)),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 0,
        left: 0.3531576991081238,
        child: Text('Neueste Bewertungen', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 26,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 51.802734375,
        left: 0,
        child: Container(
      width: 399.8636169433594,
      height: 328,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(196, 196, 196, 0.4000000059604645),
          offset: Offset(0,0),
          blurRadius: 15
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 16,
        left: 16,
        child: Container(
        width: 47.0821533203125,
        height: 45.348388671875,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(500),
            topRight: Radius.circular(500),
            bottomLeft: Radius.circular(500),
            bottomRight: Radius.circular(500),
          ),
      border : Border.all(
          color: Color.fromRGBO(0, 0, 60, 1),
          width: 1,
        ),
      image : DecorationImage(
          image: AssetImage('assets/images/Rectangle996.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 183,
        left: 16,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Transform.rotate(
        angle: -0.22576562707395315 * (math.pi / 180),
        child: Text('💬 “Ich liebe Freiburg, aber der Verkehr ist ohne den Stadttunnel eine Katastrophe!”', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.35
      ),),
      ), SizedBox(height : 11),
Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('Details zeigen', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 8),
Transform.rotate(
        angle: -179.99999499104388 * (math.pi / 180),
      //   child: SvgPicture.asset(
      //   'assets/images/vector.svg',
      //   semanticsLabel: 'vector'
      // );,
      ),

        ],
      ),
    ),
],
      ),
    )
      ),Positioned(
        top: 66,
        left: 16,
        child: Container(
      decoration: BoxDecoration(
          border : Border.all(
          color: Color.fromRGBO(229, 229, 229, 1),
          width: 1,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Transform.rotate(
        angle: -0.22576562707395315 * (math.pi / 180),
        child: const  Text('25-34, Student, Zugezogen, Männlich Keine Kinder', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.3888888888888888
      ),),
      ),

        ],
      ),
    ), const SizedBox(height : 4),
Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          SizedBox(width : 16),
Text('4.50', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 2.2222222222222223
      ),),

        ],
      ),
    ),
],
      ),
    )
      ),Positioned(
        top: 14.52669906616211,
        left: 76.207763671875,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          
        ],
      ),
    )
      ),Positioned(
        top: 27.28973388671875,
        left: 75.10582733154297,
        child: Transform.rotate(
        angle: -0.22923024072616202 * (math.pi / 180),
        child: Text('Freiburg im Breisgau', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 60, 1),
        fontFamily: 'Gilroy',
        fontSize: 22,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.1363636363636365
      ),),
      )
      ),
        ]
      )
    )
      ),
        ]
      )
    )
    );
  }
}