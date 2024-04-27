import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla2());
}

class Pantalla2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Pantalla2> {
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
                  print('Boton con Borde!');
                },
                child: Icon(Icons.cloud_upload_sharp),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  print('Boton con Borde');
                },
                child: Icon(Icons.pageview),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('Texto Boton!');
                },
                child: Icon(Icons.cloud_done_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
