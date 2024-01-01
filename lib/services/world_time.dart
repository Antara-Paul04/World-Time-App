import 'package:http/http.dart';
import 'dart:convert';

class worldTime{

  String location;//location name for the UI
  String time; //time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  worldTime({this.location='', this.flag='', this.url=''}): time = '';

  Future <void> getTime() async{
    Uri link = Uri.parse('http://worldtimeapi.org/api/timezone/$url');

    //Request response
    Response response = await get (link);
    Map data=jsonDecode(response.body);
    // print (data);

    // get properties from data
    String datetime= data['datetime'];
    String offset= data['utc_offset'].substring(1,3);
    // print(datetime);
    // print(offset);

    //create date time object
    DateTime now= DateTime.parse(datetime);
    now= now.add(Duration(hours: int.parse(offset)));
    
    // set the time property
    time= now.toString();
  }
}

