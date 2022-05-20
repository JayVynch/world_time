import 'package:flutter/material.dart';
import 'package:purr_mobile/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

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
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
          child: SpinKitWave(
            color: Colors.white,
            size: 50.0,
          ),
      ),
    );
  }
}
