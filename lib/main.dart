import 'package:flutter/material.dart';
import './pages/onboarding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PsycheSail',
      initialRoute: '/',
      routes: {
        '/': (context) => const onboarding(),
      },
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(useMaterial3: true),
    );
  }
}


  