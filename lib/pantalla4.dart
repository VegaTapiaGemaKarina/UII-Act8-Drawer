import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla4());
}

class Pantalla4 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Pantalla4> {
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
                onPressed: () {
                  print('Boton elevado!');
                },
                child: Icon(Icons.favorite),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  print('Boton con Borde!');
                },
                child: Icon(Icons.calendar_view_day),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('Texto Boton!');
                },
                child: Icon(Icons.stacked_bar_chart_rounded),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.favorite),
                  label: Text('Boton Home elevado')),
              SizedBox(height: 20),
              OutlinedButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.calendar_view_day),
                  label: Text('Boton con Borde ')),
              SizedBox(height: 20),
              TextButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.stacked_bar_chart_rounded),
                  label: Text('Boton Texto')),
            ],
          ),
        ),
      ),
    );
  }
}
