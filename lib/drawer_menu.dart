import 'package:flutter/material.dart';

class MyDrawerVega extends StatefulWidget {
  const MyDrawerVega({Key? key}) : super(key: key);

  @override
  State<MyDrawerVega> createState() => _MyDrawerVegaState();
}

class _MyDrawerVegaState extends State<MyDrawerVega> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffff57ba),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Gema Vega",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "a.21308051280400@cbtis128.edu.mx",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
