import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  Map data={};

  @override
  Widget build(BuildContext context) {

    data = (ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>) ?? {};
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                onPressed:(){
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style:TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0
                    )
                  )
                ],),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['time'],
                    style:TextStyle(
                      fontSize: 40.0,
                      letterSpacing: 2.0
                    )
                  )
                ],)
            ],),
        )
      ),
    );
  }
}
