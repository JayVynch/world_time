import 'package:flutter/material.dart';
import 'package:purr_mobile/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';
  void setWorldTime() async{
    WorldTime instance = WorldTime(location: 'Lagos',url: '/Africa/Lagos');
    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'time': instance.time
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setWorldTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(time),
      ),
    );
  }
}
