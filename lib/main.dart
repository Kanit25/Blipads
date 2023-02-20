import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Registro_page.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/login_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: LoginPage2.id,
      routes: {
        LoginPage2.id: (_) => LoginPage2(),
        '/log': (context) => LoginPage2(),
        '/reg': (context) => LoginPage(),
        '/home': (context) => Homepage(),
      },
    );
  }
}
