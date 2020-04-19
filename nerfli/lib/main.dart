import 'package:flutter/material.dart';
import 'package:nerfli/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películass',
      initialRoute: '/',
      routes: {
        '/':(BuildContext context) => HomePage()
      },
    );
  }
}