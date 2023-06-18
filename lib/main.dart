import 'package:flutter/material.dart';
import 'screens/login_form.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Form'),
        ),
        body: const LoginForm(),
        //body: const MenuForm(),
      ),
    );
  }
}