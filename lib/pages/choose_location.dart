import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Location"),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {

          });
        },
        child: Text("Hit me"),
      ),
    );
  }
}
