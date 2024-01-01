import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocation createState() => _ChooseLocation();
}

class _ChooseLocation extends State<ChooseLocation> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Choose a Location"),
        centerTitle: true,
      ),
    );
  }
}

