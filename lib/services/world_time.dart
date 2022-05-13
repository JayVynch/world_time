import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String time = '';
  String url;
  String location;

  WorldTime({required this.location, required this.url});

  Future<void> getTime() async{
    try{
      var response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    } catch(e){
      print(e);
      time = 'Opps!! Sorry we can not tell you the time right now';
    }

  }
}