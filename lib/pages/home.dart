import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: ()
                {
                  Navigator.pushNamed(context, "/location");
                },
                icon: Icon(
                    Icons.edit_location
                ),
                label: Text("Edit Location")
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
              child: Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
