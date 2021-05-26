import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "“Cuando haces lo correcto, obtienes la sensación de paz y serenidad. Hazlo una y otra vez.”",
    "“Debes hacer las cosas que crees que no puedes hacer.”",
    "“Si puedes soñarlo puedes hacerlo, recuerda que todo esto comenzó con un ratón.”",
    "“Si dominamos nuestra mente, vendrá la felicidad.”",
    "“Si dominamos nuestra mente, vendrá la felicidad.”",
    "“Cáete siete veces y levántate ocho.”",
    "“Todo lo que puedas imaginar, es real.”",
    "“La esperanza es el sueño del hombre despierto.”",
    "“Un objetivo sin un plan es solo un deseo.”",
    "“Si no te gustan las cosas, ¡cámbialas! No eres un árbol.”",
    "“Para tener éxito, primero debemos creer que podemos hacerlo.”",
    "“El fracaso es éxito si aprendemos de él.”",
    "“El poder de la imaginación nos hace infinitos.”",
    "“El mejor momento del día es ahora.”",
    "“No cuentes los días, haz que los días cuenten.”",
    "“Siempre es temprano para rendirse.”",
    "“El aprendizaje es un regalo. Incluso cuando el dolor es tu maestro.”",
    "“Haz una cosa que te de miedo al día.”",
    "“Nunca eres demasiado viejo para tener otra meta u otro sueño.”",
    "“Quiero hacerlo porque quiero hacerlo.”",
    "“Encuentra algo que te apasione y mantente tremendamente interesado en ello.”",
  ];

  var _fraseGenerada = "click abajo para generar una nueva frase";

  void _generarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGenerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Motivadoras"),
        backgroundColor: Colors.green,
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            /*decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber)
            ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGenerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nueva Frase",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: _generarFrase,
                )
              ],
            ),
          ),
        ),
    );
  }
}
