import 'package:flutter/material.dart';
import 'package:purr_mobile/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Lagos',url: '/Africa/Lagos'),
    WorldTime(location: 'London',url: '/Europe/London'),
    WorldTime(location: 'Cairo',url: '/Africa/Cairo'),
    WorldTime(location: 'Barbados',url: '/America/Barbados'),
    WorldTime(location: 'Tokyo',url: '/Asia/Tokyo'),
  ];

  void updateTime(index) async{
    WorldTime instance = index;
    await instance.getTime();
    Navigator.pop(context,{
      'location': instance.location,
      'time': instance.time
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose a Location"),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                      updateTime(locations[index]);
                  },
                  title: Text(
                    locations[index].location,
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
