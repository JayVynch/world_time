import 'package:flutter/material.dart';
import 'package:purr_mobile/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    // print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,100.0,0,0),
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: ()
                  async{
                    dynamic result = await Navigator.pushNamed(context,'/location');
                    setState(() {
                      data = {
                        'time' : result['time'],
                        'location' : result['location']
                      };
                    });
                  },
                  icon: const Icon(
                      Icons.edit_location
                  ),
                  label: const Text("Edit Location"),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 38.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 70.0),
                    Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.blueAccent[400],
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
