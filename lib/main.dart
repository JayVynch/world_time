import 'package:flutter/material.dart';
import 'package:purr_mobile/pages/choose_location.dart';
import 'package:purr_mobile/pages/home.dart';
import 'package:purr_mobile/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' :  (context) => const Loading(),
      '/home' :  (context)  =>  const Home(),
      '/location' :  (context)  => const ChooseLocation(),
    },
  ));
}







