import 'dart:convert';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _Loading createState() => _Loading();
}

class _Loading extends State<Loading> {

  void setupWorldTime() async{
    await Future.delayed(Duration(seconds: 2));
    worldTime instance=worldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    // print (instance.time);
    Navigator.pushReplacementNamed(context, '/home', arguments: {

      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}
