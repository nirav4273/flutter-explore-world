import 'package:flutter/material.dart';
import 'Home.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "ExploreWorld",
      home:HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
