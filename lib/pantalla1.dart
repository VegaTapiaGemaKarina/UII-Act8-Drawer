import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla1());
}

class Pantalla1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Pantalla1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones en Flutter'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Boton Elevado');
                },
                child: Text('Boton Elevado'),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  print('Boton con borde!');
                },
                child: Text('Boton con borde'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('Texto Boton!');
                },
                child: Text('Texto Boton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
