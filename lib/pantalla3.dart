import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla3());
}

class Pantalla3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Pantalla3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones Diseños'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print('Boton elevado!');
                  },
                  child: Text('Boton Elevado'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xfe3e0057)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffc253c6)),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xffffffff)),
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffad006a)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Color(0xffff8fd5)),
                  )),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    print('Texto Boton!');
                  },
                  child: Text('Texto Boton'),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffffffff)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff6b005d)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Color(0xffff86f6)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
