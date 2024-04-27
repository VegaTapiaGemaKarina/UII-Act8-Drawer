import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla5());
}

class Pantalla5 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Pantalla5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones Diseño'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Boton Elevado'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffffffff)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff0c0269)),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff4671ff)),
                      textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        //color: Colors.black
                      )))),
              SizedBox(height: 20),
              OutlinedButton(
                  onPressed: () {
                    print('Boton con Borde!');
                  },
                  child: Text('Boton con Borde'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffffffff)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xff920065);
                        }
                        return Color(0xffd9559e);
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }))),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    print('Texto Boton!');
                  },
                  child: Text('Texto Boton'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
